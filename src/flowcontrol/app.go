package main

import (
	_ "embed"
	"fmt"
	"log"
	"os"
	"os/exec"
	"path"
	"path/filepath"
	"strconv"
	"strings"
	"sync"
	"time"

	"github.com/charlie-haley/flowcontrol/pkg/serial"
	"github.com/charlie-haley/flowcontrol/pkg/setup"
	"github.com/charlie-haley/flowcontrol/pkg/state"
	"github.com/wailsapp/wails"
)

type App struct {
	log     *wails.CustomLogger
	runtime *wails.Runtime
	serial  *serial.Serial
}

var doOnce sync.Once

var a *App

func (app *App) WailsInit(runtime *wails.Runtime) error {
	app.runtime = runtime

	a = app

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
	go emitStateEvents()

	return nil
}

func emitStateEvents() {
	for {
		s, err := a.serial.GetState()
		if err != nil {
			log.Fatal(err)
		}
		if s != nil {
			for _, sensor := range *&s.Sensors {
				a.runtime.Events.Emit(fmt.Sprintf("sensor:%v:value", sensor.Position), sensor.Value)
			}
			for _, fan := range *&s.Fans {
				a.runtime.Events.Emit(fmt.Sprintf("fan:%v", fan.Position), fan)
			}
			a.runtime.Events.Emit("state:fans", *&s.Fans)
			doOnce.Do(func() {
				configureStateEvents(s)
			})
		}
	}
}

func configureStateEvents(s *state.State) {
	if s != nil {
		for _, fan := range *&s.Fans {
			a.runtime.Events.On(fmt.Sprintf("fan:%v:auto", fan.Position), func(data ...interface{}) {
				// this is a bit hacky, need a cleaner way of doing this
				d := strings.Split(fmt.Sprintf("%v", data[0]), ":")
				pos, _ := strconv.Atoi(d[0])
				a.serial.SetMode(pos, fmt.Sprintf("%v", d[1]))
			})
			a.runtime.Events.On(fmt.Sprintf("fan:%v:speed", fan.Position), func(data ...interface{}) {
				println(fmt.Sprintf("%v", data[0]))
				d := strings.Split(fmt.Sprintf("%v", data[0]), ":")
				pos, _ := strconv.Atoi(d[0])
				a.serial.SetSpeed(pos, fmt.Sprintf("%v", d[1]))
			})
		}
	}
}
