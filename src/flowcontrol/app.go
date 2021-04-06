package main

import (
	"bufio"
	_ "embed"
	"encoding/json"
	"log"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"strings"
	"syscall"
	"time"
	"fmt"

	"github.com/tarm/serial"
	"github.com/wailsapp/wails"
)

//State TODO: Move to another file
type State struct {
	FanA      Fan `json:"fan_a"`
	FanB      Fan `json:"fan_b"`
	WaterTemp int `json:"temp_water"`
}

//Fan struct
type Fan struct {
	Speed int
	Auto  int
}

type wailsstruct struct {
	log     *wails.CustomLogger
	runtime *wails.Runtime
}

func (w *wailsstruct) WailsInit(runtime *wails.Runtime) error {
	w.runtime = runtime
	c := &serial.Config{Name: "COM5", Baud: 9600}
	s, err := serial.OpenPort(c)
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
			cmd.SysProcAttr = &syscall.SysProcAttr{HideWindow: true}
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
					json.Unmarshal([]byte(text), &State)
					runtime.Events.Emit("water:temp", State.WaterTemp)
					runtime.Events.Emit("fan:a", State.FanA)
					runtime.Events.Emit("fan:b", State.FanB)
					time.Sleep(50 * time.Millisecond)
				}
				if scanner.Err() != nil {
					log.Fatal(err)
				}
			}
		}
	}()
	runtime.Events.On("fan:a:auto", func(data ...interface{}) {
		serialCmd := fmt.Sprintf("X%v%v\n", "A", data[0])
		n, err := s.Write([]byte(serialCmd))
		if err != nil {
			log.Fatal(err)
			log.Fatal(n)
		}
	})
	runtime.Events.On("fan:b:auto", func(data ...interface{}) {
		serialCmd := fmt.Sprintf("X%v%v\n", "B", data[0])
		n, err := s.Write([]byte(serialCmd))
		if err != nil {
			log.Fatal(err)
			log.Fatal(n)
		}
	})

	runtime.Events.On("fan:a:speed", func(data ...interface{}) {
		serialCmd := fmt.Sprintf("%v%v\n", "A", data[0])
		n, err := s.Write([]byte(serialCmd))
		if err != nil {
			log.Fatal(err)
			log.Fatal(n)
		}
	})
	runtime.Events.On("fan:b:speed", func(data ...interface{}) {
		serialCmd := fmt.Sprintf("%v%v\n", "B", data[0])
		n, err := s.Write([]byte(serialCmd))
		if err != nil {
			log.Fatal(err)
			log.Fatal(n)
		}
	})

	return nil
}