//go:build windows
// +build windows

package serial

import (
	"bufio"
	"errors"
	"log"

	"github.com/tarm/serial"
	"golang.org/x/sys/windows/registry"
)

func getValidPort() (*serial.Port, error) {
	//Find active serial ports from registry key
	k, err := registry.OpenKey(registry.LOCAL_MACHINE, `HARDWARE\\DEVICEMAP\\SERIALCOMM`, registry.QUERY_VALUE)
	if err != nil {
		log.Fatal(err)
	}
	defer k.Close()
	ki, err := k.Stat()
	if err != nil {
		log.Fatal(err)
	}
	r, err := k.ReadValueNames(int(ki.ValueCount))
	if err != nil {
		log.Fatal(err)
	}
	kvalue := make([]string, ki.ValueCount)
	for i, test := range r {
		q, _, err := k.GetStringValue(test)
		if err != nil {
			log.Fatal(err)
		}
		kvalue[i] = q
	}
	var s *serial.Port
	for _, element := range kvalue {
		c := &serial.Config{Name: element, Baud: 9600}
		s, err = serial.OpenPort(c)
		if err != nil {
			log.Print("can't connect to port")
			continue
		}
		scanner := bufio.NewScanner(s)
		for scanner.Scan() {
			text := scanner.Text()
			//Rubbish way of checking if the device is correct
			if text[0] == '{' {
				return s, nil
			}
		}
	}
	return nil, errors.New("error finding valid port")
}
