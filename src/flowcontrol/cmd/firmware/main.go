package main

import (
	"fmt"
	"machine"
	"regexp"
	"strconv"
	"time"

	"github.com/charlie-haley/flowcontrol/pkg/datapoint"
	"github.com/charlie-haley/flowcontrol/pkg/fan"
	"github.com/charlie-haley/flowcontrol/pkg/sensor"
	"github.com/charlie-haley/flowcontrol/pkg/state"

	// !! tinygo doesn't support encoding/json - see https://github.com/tinygo-org/tinygo/issues/447 !!
	"github.com/francoispqt/gojay"
)

var Version = "development"

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
	s := &state.State{}
	// TEMP: This is hardcoded for all 6 fans, need to detect RPM using tach
	s.Fans = append(s.Fans,
		fan.Fan{Position: 1, Auto: true, TachPin: machine.GPIO21, PwmPin: machine.GPIO5},
		//fan.Fan{Position: 2, Auto: true, TachPin: machine.GPIO22, PwmPin: machine.GPIO4},
		// fan.Fan{Position: 3, Auto: true, TachPin: machine.GPIO23, PwmPin: machine.GPIO6},
		fan.Fan{Position: 4, Auto: true, TachPin: machine.GPIO24, PwmPin: machine.GPIO7},
		// fan.Fan{Position: 5, Auto: true, TachPin: machine.GPIO25, PwmPin: machine.GPIO8},
		// fan.Fan{Position: 6, Auto: true, TachPin: machine.GPIO26, PwmPin: machine.GPIO9},
	)
	//Attempt to get a temp reading for each sensor -- assume disconnected if reading is negative
	s1 := sensor.Sensor{Position: 1, Pin: machine.ADC1}
	s1temp := s1.Temp()
	if s1temp > 0 {
		s1.Value = s1temp
		s.Sensors = append(s.Sensors, s1)
	}
	//Position 2 seems broken, it outputs similiar reading to pos 1 https://github.com/charlie-haley/flowcontrol/issues/74
	// s2 := sensor.Sensor{Position: 2, Pin: machine.ADC0}
	// s2temp := s2.Temp()
	// if s2temp > 0 {
	// 	s2.Value = s2temp
	// 	s.Sensors = append(s.Sensors, s2)
	// }

	// Set a default "auto" curve, this will be configured and saved
	s.Curve = datapoint.DataPoints{
		datapoint.DataPoint{Temp: 20, Percent: 20},
		datapoint.DataPoint{Temp: 25, Percent: 40},
		datapoint.DataPoint{Temp: 30, Percent: 50},
		datapoint.DataPoint{Temp: 40, Percent: 70},
		datapoint.DataPoint{Temp: 50, Percent: 90},
	}

	for {
		select {
		case command := <-in:
			if len(command) <= 1 {
				continue
			}

			// Mode command - format M<POS><ACT><VAL>
			// POS is fan position (1, 2, 3, 4 etc.)
			// ACT is the action for the fan (A=auto)
			// VAL: is the value for a given action (optional) (for 'auto', a bool as int)
			// e.g M5A1 would toogle auto mode on fan in position 5,
			if valid, _ := regexp.MatchString("^M\\dA(\\d)?$", command); valid {
				position := int(command[1] - '0')
				fan, err := s.Fans.GetByPosition(position)
				if err != nil {
					println(err)
				}
				if fan != nil {
					if command[2] == 'A' {
						fan.Auto = int(command[3]-'0') == 1
					}
				}
			}

			// Speed command - format S<POS><VAL>
			// POS is fan position (1, 2, 3, 4 etc.)
			// VAL is value of the fan speed (1-100)
			// e.g S589 would toogle fan 5 to 89% speed
			if valid, _ := regexp.MatchString("^S\\d(100|[1-9]?\\d)$", command); valid {
				percent := command[2:len(command)]
				position := int(command[1] - '0')
				fan, err := s.Fans.GetByPosition(position)
				if err != nil {
					println(err)
				}
				if fan != nil {
					if !fan.Auto {
						fan.Speed, _ = strconv.Atoi(percent)
						// update fan speed
						fan.Set(uint32(fan.Speed))
					}
				}
			}

			// echo state
			echo(s)
			command = ""
			continue
		default:
			updated := s.Update()

			for i, _ := range s.Fans {
				fan := &s.Fans[i]
				if fan.Auto {
					// configurable sensor will need placing here instead of hardcoded value
					expected := s.Curve.CurrentPercent(s.Sensors[0].Value)
					// this needs to be here, the loop is potentially trying to update values too fast
					time.Sleep(10 * time.Millisecond)
					if fan.Speed != expected {
						fan.Speed = expected
						fan.Set(uint32(fan.Speed))
					}
				}
			}

			// echo state if there's a change
			if updated {
				echo(s)
			}
			continue
		}
	}
}

// function for echo'ing state json object over uart
func echo(state *state.State) {
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
