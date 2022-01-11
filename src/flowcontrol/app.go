package main

import (
	"bufio"
	_ "embed"
	"encoding/json"
	"fmt"
	"log"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"strconv"
	"strings"
	"time"

	"github.com/charlie-haley/flowcontrol/flwserial"
	"github.com/charlie-haley/flowcontrol/setup"
	"github.com/wailsapp/wails"
)

// State
type State struct {
	Sensors Sensors
	Fans    Fans
}

//Sensors
type Sensors []Sensor
type Sensor struct {
	Position int
	Value    int
}

//Fans
type Fans []Fan
type Fan struct {
	Position int
	Auto     bool
	Speed    int
	Rpm      int
}

type wailsstruct struct {
	log     *wails.CustomLogger
	runtime *wails.Runtime
}

func (w *wailsstruct) WailsInit(runtime *wails.Runtime) error {
	w.runtime = runtime

	// This detection should be done with a device identifier or similiar
	s, err := flwserial.GetValidPort()
	//Go Routine for fetching stats from the flowcontrol-monitor application
	go func() {
		for {
			cwd, err := os.Executable()
			if err != nil {
				log.Fatal(err)
			}
			exPath := filepath.Dir(cwd)
			monitorPath := path.Join(exPath, "flowcontrol-monitor.exe")
			cmd := exec.Command("cmd", "/C", monitorPath)
			setup.SetupCmd(cmd)
			out, err := cmd.Output()
			if err != nil {
				log.Fatal(err)
			}
			stats := strings.Replace(string(out), "\r\n", "", -1)
			gpuStats := strings.Split(stats, ",")
			runtime.Events.Emit("gpu:temp", gpuStats[0])
			runtime.Events.Emit("gpu:clock", gpuStats[1])
			runtime.Events.Emit("cpu:temp", gpuStats[2])
			time.Sleep(5 * time.Second)
		}
	}()
	//Go Routine for getting the state of the controller over serial
	go func() {
		for {
			var State State

			if err != nil {
				log.Fatal(err)
			}
			text := ""
			scanner := bufio.NewScanner(s)
			for scanner.Scan() {
				text = scanner.Text()
				//Ensure json response is well formed before displaying
				if text[0] == '{' {
					println("!!!!!!!!!!!!!!!!!!!!!!!!!!")
					println(text)
					json.Unmarshal([]byte(text), &State)
					for _, sensor := range State.Sensors {
						p := strconv.Itoa(sensor.Position)
						runtime.Events.Emit("sensor:"+p+":value", sensor.Value)
					}
					for _, fan := range State.Fans {
						p := strconv.Itoa(fan.Position)
						runtime.Events.Emit("fan:"+p, fan)
					}
				}
				if scanner.Err() != nil {
					log.Fatal(err)
				}
			}
		}
	}()

	//gross hardcodedness for now
	runtime.Events.On("fan:1:auto", func(data ...interface{}) {
		serialCmd := fmt.Sprintf("M%vA%v\r", "1", data[0])
		println(serialCmd)
		n, err := s.Write([]byte(serialCmd))
		if err != nil {
			log.Fatal(err)
			log.Fatal(n)
		}
	})
	runtime.Events.On("fan:2:auto", func(data ...interface{}) {
		serialCmd := fmt.Sprintf("M%vA%v\r", "2", data[0])
		println(serialCmd)
		n, err := s.Write([]byte(serialCmd))
		if err != nil {
			log.Fatal(err)
			log.Fatal(n)
		}
	})

	runtime.Events.On("fan:1:speed", func(data ...interface{}) {
		serialCmd := fmt.Sprintf("S%v%v\r", "1", data[0])
		n, err := s.Write([]byte(serialCmd))
		if err != nil {
			log.Fatal(err)
			log.Fatal(n)
		}
	})
	runtime.Events.On("fan:2:speed", func(data ...interface{}) {
		serialCmd := fmt.Sprintf("S%v%v\r", "2", data[0])
		n, err := s.Write([]byte(serialCmd))
		if err != nil {
			log.Fatal(err)
			log.Fatal(n)
		}
	})

	return nil
}
