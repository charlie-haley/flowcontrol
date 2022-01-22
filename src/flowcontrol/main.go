package main

import (
	_ "embed"

	"github.com/wailsapp/wails"
)

//go:embed cmd/gui/frontend/dist/app.js
var js string

//go:embed cmd/gui/frontend/dist/app.css
var css string

var appver = "development"

func main() {

	app := wails.CreateApp(&wails.AppConfig{
		Width:  880,
		Height: 600,
		Title:  "flowcontrol",
		JS:     js,
		CSS:    css,
		Colour: "#131313",
	})
	app.Bind(&App{})
	app.Bind(version)
	app.Run()
}

func version() string {
	return appver
}
