//go:build gui
// +build gui

package serial

import (
	"fmt"
	"log"

	tarmserial "github.com/tarm/serial"
)

type Serial struct {
	Port *tarmserial.Port
}

var s *Serial

func init() {
	s = &Serial{}
	var err error
	// This detection should be done with a device identifier or similiar
	s.Port, err = getValidPort()
	if err != nil {
		log.Fatal(err)
	}
}

func (serial *Serial) SetMode(position int, value string) {
	serialCmd := fmt.Sprintf("M%vA%v\r", position, value)
	_, err := s.Port.Write([]byte(serialCmd))
	if err != nil {
		log.Fatal(err)
	}
}

func (serial *Serial) SetSpeed(position int, value string) {
	serialCmd := fmt.Sprintf("S%v%v\r", "1", value)
	_, err := s.Port.Write([]byte(serialCmd))
	if err != nil {
		log.Fatal(err)
	}
}
