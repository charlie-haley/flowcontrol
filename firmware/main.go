package main

import (
	"fmt"
	"machine"
	"math"
	"regexp"
	"strconv"
	"time"

	// !! tinygo doesn't support encoding/json - see https://github.com/tinygo-org/tinygo/issues/447 !!
	"github.com/francoispqt/gojay"
)

var Version = "development"
var LogLevel = "debug"

/*
 Main
*/
var (
	txPin = machine.UART0_TX_PIN
	rxPin = machine.UART0_RX_PIN
	uart  = machine.UART0
)

func main() {
	uart.Configure(machine.UARTConfig{TX: txPin, RX: rxPin})
	uart.SetBaudRate(9600)

	in := make(chan string)

	machine.InitADC()

	println("+---------------------------------------------------+")
	println("|    _____                         __           __  |")
	println("|   / _/ /__ _    _________  ___  / /________  / /  |")
	println("|  / _/ / _ \\ |/|/ / __/ _ \\/ _ \\/ __/ __/ _ \\/ /   |")
	println("| /_//_/\\___/__,__/\\__/\\___/_//_/\\__/_/  \\___/_/    |")
	println("|                                                   |")
	println("+---------------------------------------------------+")
	ver := fmt.Sprintf("firmware version: %s", Version)
	println(ver)
	println("---")

	go read(in)
	go command(in)

	// block forever
	select {}
}

// goroutine for actioning a command
func command(in chan string) {
	s := &State{}
	// Iterate over each fan and fetch RPM to understand which is connected
	for i := 1; i <= 6; i++ {
		// println(i)
	}
	// TEMP: This is hardcoded for all 6 fans
	s.Fans = append(s.Fans,
		Fan{Position: 1, Speed: 50, Auto: true, Rpm: 0, TachPin: machine.GPIO21, PwmPin: machine.GPIO5},
		// Fan{Position: 2, Speed: 100, Auto: true, Rpm: 0, TachPin: machine.GPIO22, PwmPin: machine.GPIO4},
		// Fan{Position: 3, Speed: 50, Auto: true, Rpm: 0, TachPin: machine.GPIO23, PwmPin: machine.GPIO6},
		// Fan{Position: 4, Speed: 25, Auto: true, Rpm: 0, TachPin: machine.GPIO24, PwmPin: machine.GPIO7},
		// Fan{Position: 5, Speed: 100, Auto: true, Rpm: 0, TachPin: machine.GPIO25, PwmPin: machine.GPIO8},
		// Fan{Position: 6, Speed: 50, Auto: true, Rpm: 0, TachPin: machine.GPIO26, PwmPin: machine.GPIO9},
	)
	//Attempt to get a temp reading for each sensor -- assume disconnected if reading is negative
	if getTemp(machine.ADC1) > 0 {
		s.Sensors = append(s.Sensors, Sensor{Position: 1, Value: getTemp(machine.ADC1), Pin: machine.ADC1})
	}
	//Position 2 seems broken, it outputs similiar reading to pos 1 https://github.com/charlie-haley/flowcontrol/issues/74
	// if getTemp(machine.ADC0) > 0 {
	// 	s.Sensors = append(s.Sensors, Sensor{Position: 2, Value: getTemp(machine.ADC0), Pin: machine.ADC0})
	// }

	// Set a default "auto" curve, this will be configured and saved
	s.Curve = []DataPoint{
		DataPoint{Temp: 20, Percent: 20},
		DataPoint{Temp: 25, Percent: 40},
		DataPoint{Temp: 30, Percent: 50},
		DataPoint{Temp: 40, Percent: 70},
		DataPoint{Temp: 50, Percent: 90},
	}

	for {
		select {
		case command := <-in:
			if len(command) <= 1 {
				continue
			}

			// Mode command - format M<POS><ACT>
			// POS is fan position (1, 2, 3, 4 etc.)
			// ACT is the action for the fan (A=auto)
			// e.g M5A would toogle auto mode on fan in position 5
			if valid, _ := regexp.MatchString("^M\\dA$", command); valid {
				position := int(command[1] - '0')
				fan := &s.Fans[(position - 1)]
				fan.Auto = !fan.Auto
			}

			// Speed command - format S<POS><VAL>
			// POS is fan position (1, 2, 3, 4 etc.)
			// VAL is value of the fan speed (1-100)
			// e.g S589 would toogle fan 5 to 89% speed
			if valid, _ := regexp.MatchString("^S\\d(100|[1-9]?\\d)$", command); valid {
				percent := command[2:len(command)]
				position := int(command[1] - '0')
				fan := &s.Fans[(position - 1)]
				if !fan.Auto {
					fan.Speed, _ = strconv.Atoi(percent)
					// update fan speed
					setFanPercent(fan.PwmPin, uint32(fan.Speed))
				}
			}

			// echo state
			echo(s)
			command = ""
			continue
		default:
			for i, _ := range s.Fans {
				fan := &s.Fans[i]
				if fan.Auto {
					fan.Speed, _ = strconv.Atoi(percent)
					// update fan speed
					setFanPercent(fan.PwmPin, uint32(fan.Speed))
				}
			}
			updated := updateState(s)
			// echo state if there's a change
			if updated {
				echo(s)
			}
			time.Sleep(100 * time.Millisecond)
			continue
		}
	}
}

func getFanSpeed()

// function for echo'ing state json object over uart
func echo(state *State) {
	// serailize json
	str, err := gojay.MarshalJSONObject(state)
	if err != nil {
		println(err)
	}

	println(string(str))
}

// goroutine for reading uart input
func read(in chan string) {
	input := make([]byte, 64)
	i := 0
	for {
		if uart.Buffered() > 0 {
			data, _ := uart.ReadByte()
			switch data {
			case 13:
				// send input to channel
				in <- string(input[:i])
				// reset input and counter
				input = make([]byte, 64)
				i = 0
			default:
				input[i] = data
				i++
			}
		}
		time.Sleep(10 * time.Millisecond)
	}
}

func updateState(state *State) bool {
	stateUpdated := false
	//ensure sensor data is up to date
	var sensors Sensors
	for i, sensor := range state.Sensors {
		temp := getTemp(sensor.Pin)
		// check if sensor value in state is the same as current
		if state.Sensors[i].Value != temp {
			stateUpdated = true
			sensors = append(sensors, Sensor{
				Position: sensor.Position,
				Value:    temp,
				Pin:      sensor.Pin},
			)
		}
	}
	if stateUpdated {
		state.Sensors = sensors
	}

	return stateUpdated
}

//WIP
func getCurvePercent(temp int, curve []DataPoint) int {
	for i, dp := range curve {
		// first iteration is a special case due to not being able to get previous value
		if i == 0 {
			// if current temp is less than data point, just use percent value as min on first iteration
			if temp < dp.Temp {
				return dp.Percent
			}
			// else skip this iteration
			continue
		}
		// linear interpolation to calculate current position between data points
		if temp < dp.Temp && temp > curve[i-1].Temp {
			x1 := dp.Temp
			y1 := dp.Percent
			x2 := curve[i-1].Temp
			y2 := curve[i-1].Percent
			return y1 + (temp-x1)*((y2-y1)/(x2-x1))
		}
		return dp.Temp
	}
	// failling everthing, get last data point to be safe
	return curve[(len(curve) - 1)].Temp
}

func setFanPercent(pin machine.Pin, speed uint32) {
	pwm, _ := machine.PWMGroup(pin)
	pwm.Configure(machine.PWMConfig{Period: 1e9 / 25000})
	channel, _ := pwm.Channel(pin)
	pwm.Set(channel, (pwm.Top()/100)*speed)
}

func getTemp(pin machine.Pin) int {
	adc := machine.ADC{pin}
	adc.Configure(machine.ADCConfig{})

	var res, v, rd, rdef, rth float64
	val := adc.Get()

	res = 3.3 / 65535
	v = float64(val) * res
	rd = 10000
	rdef = (rd * 16800) / (rd + 16800)
	rth = (3.3 - v) / v * rdef
	temp := steinhartTemp(rth)

	// !! TEMP - Dividing reading by 2, it seems due to a hardware issue the reading is wrong, needs further investigation !!
	// https://github.com/charlie-haley/flowcontrol/issues/74
	return temp / 2
}

func steinhartTemp(r float64) int {
	s := math.Log(r/10000) / 3950
	s += (1.0 / (25 + 273.15))
	s = (1.0 / s) - 273.15
	return int(s)
}

/*
 State
*/
type State struct {
	Sensors Sensors
	Fans    Fans
	Curve   []DataPoint
}

type DataPoint struct {
	Temp    int
	Percent int
}

func (u *State) IsNil() bool {
	return u == nil
}

func (u *State) MarshalJSONObject(enc *gojay.Encoder) {
	enc.ArrayKey("sensors", u.Sensors)
	enc.ArrayKey("fans", u.Fans)
}

/*
 Sensors
*/
type Sensors []Sensor

func (ss Sensors) IsNil() bool {
	return len(ss) == 0
}

func (ss Sensors) MarshalJSONArray(enc *gojay.Encoder) {
	if len(ss) > 0 {
		for _, f := range ss {
			enc.Object(&f)
		}
	}
}

/*
 Sensor
*/
type Sensor struct {
	Position int
	Value    int
	Pin      machine.Pin
}

func (u *Sensor) IsNil() bool {
	return u == nil
}

func (u *Sensor) MarshalJSONObject(enc *gojay.Encoder) {
	enc.IntKey("position", u.Position)
	enc.IntKey("value", u.Value)
}

/*
 Fans
*/
type Fans []Fan

func (fs Fans) IsNil() bool {
	return len(fs) == 0
}

func (fs Fans) MarshalJSONArray(enc *gojay.Encoder) {
	if len(fs) > 0 {
		for _, f := range fs {
			enc.Object(&f)
		}
	}
}

/*
 Fan
*/
type Fan struct {
	Position int
	Auto     bool
	Speed    int
	Rpm      int
	TachPin  machine.Pin
	PwmPin   machine.Pin
}

func (u *Fan) IsNil() bool {
	return u == nil
}

func (u *Fan) MarshalJSONObject(enc *gojay.Encoder) {
	enc.IntKey("position", u.Position)
	enc.BoolKey("auto", u.Auto)
	enc.IntKey("speed", u.Speed)
	enc.IntKey("rpm", u.Rpm)
}
