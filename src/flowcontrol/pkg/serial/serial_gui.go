//go:build gui
// +build gui

package serial

import (
	"bufio"
	"encoding/json"
	"fmt"
	"log"

	"github.com/charlie-haley/flowcontrol/pkg/state"
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
	serialCmd := fmt.Sprintf("S%v%v\r", position, value)
	_, err := s.Port.Write([]byte(serialCmd))
	if err != nil {
		log.Fatal(err)
	}
}

func (serial *Serial) GetState() (*state.State, error) {
	var cs state.State
	var err error
	scanner := bufio.NewScanner(s.Port)
	for scanner.Scan() {
		text := scanner.Text()
		//Ensure json response is well formed before displaying
		if text[0] == '{' {
			err = json.Unmarshal([]byte(text), &cs)
			if err == nil {
				return &cs, nil
			}
		}

		if scanner.Err() != nil {
			break
		}
	}
	return nil, err
}
