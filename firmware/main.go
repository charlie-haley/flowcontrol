package main

import (
	"machine"
	"time"
)

type state struct {
	name      string
	waterTemp int
}

var (
	txPin = machine.GPIO0
	rxPin = machine.GPIO1
	uart  = machine.Serial
)

func main() {
	uart.Configure(machine.UARTConfig{TX: txPin, RX: rxPin})

	in := make(chan string)

	go readUartInput(in)
	go setFanState(in)
}

func setFanState(in chan string) {
	inputstr := <-in
	uart.Write([]byte(inputstr))
	uart.Write([]byte("\r\n"))
}

func readUartInput(in chan string) {
	input := make([]byte, 64)
	i := 0
	for {
		if uart.Buffered() > 0 {
			data, _ := uart.ReadByte()

			switch data {
			case 13:
				in <- string(input[:i])
			default:
				input[i] = data
				i++
			}
		}
		time.Sleep(10 * time.Millisecond)
	}
}
