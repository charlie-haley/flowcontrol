package main

import (
	"machine"
	"math"
	"time"

	// !! tinygo doesn't support encoding/json - see https://github.com/tinygo-org/tinygo/issues/447 !!
	"github.com/francoispqt/gojay"
)

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
	state := make(chan *State)

	machine.InitADC()
	println("flowcontrol firmware v0.1.0")

	go read(in)
	go echo(state)
	go command(in, state)

	// block forever
	select {}
}

// goroutine for actioning a command
func command(in chan string, state chan *State) {
	s := &State{}
	// Iterate over each fan and fetch RPM to understand which is connected
	for i := 1; i <= 6; i++ {
		println(i)
	}
	// TEMP: This is hardcoded for all 6 fans
	s.Fans = append(s.Fans,
		Fan{Position: 1, Speed: 50, Auto: true, Rpm: 0},
		Fan{Position: 2, Speed: 100, Auto: true, Rpm: 0},
		Fan{Position: 3, Speed: 50, Auto: true, Rpm: 0},
		Fan{Position: 4, Speed: 25, Auto: true, Rpm: 0},
		Fan{Position: 5, Speed: 100, Auto: true, Rpm: 0},
		Fan{Position: 6, Speed: 50, Auto: true, Rpm: 0},
	)
	//Attempt to get a temp reading for each sensor -- assume disconnected if reading is negative
	if getTemp(machine.ADC1) > 0 {
		s.Sensors = append(s.Sensors, Sensor{Position: 1, Value: getTemp(machine.ADC1), Pin: machine.ADC1})
	}
	//Position 2 seems broken, it outputs similiar reading to pos 1 https://github.com/charlie-haley/flowcontrol/issues/74
	// if getTemp(machine.ADC0) > 0 {
	// 	s.Sensors = append(s.Sensors, Sensor{Position: 2, Value: getTemp(machine.ADC0), Pin: machine.ADC0})
	// }

	for {
		command := <-in
		if command == "" {
			continue
		}
		// Mode command - format M<ACT><POS>
		// ACT is the action for the fan (A=auto)
		// POS is fan position (1, 2, 3, 4 etc.)
		// e.g MA5 would toogle auto mode on fan in position 5
		if command[0] == 'M' {

		}

		//construct state and send to channel
		state <- s
	}
}

// goroutine for echo'ing state json object over uart
func echo(state chan *State) {
	for {
		s := <-state

		//ensure sensor data is up to date before echo'ing state
		var sensors Sensors
		for _, sensor := range s.Sensors {
			sensors = append(sensors, Sensor{
				Position: sensor.Position,
				Value:    getTemp(sensor.Pin),
				Pin:      sensor.Pin},
			)
		}
		s.Sensors = sensors

		// serailize json
		str, err := gojay.MarshalJSONObject(s)
		if err != nil {
			println(err)
		}

		println(string(str))
	}
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

func setFanPercent(pin machine.Pin, speed uint32) {
	pwm := machine.PWM0
	pwm.Configure(machine.PWMConfig{Period: 1e9 / 25000})
	channel, err := pwm.Channel(pin)
	if err != nil {
		println("Error fetching channel")
	}
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
