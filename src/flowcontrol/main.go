package main

import (
	_ "embed"

	"github.com/wailsapp/wails"
)

//go:embed frontend/dist/app.js
var js string

//go:embed frontend/dist/app.css
var css string

func main() {

	app := wails.CreateApp(&wails.AppConfig{
		Width:  880,
		Height: 600,
		Title:  "flowcontrol",
		JS:     js,
		CSS:    css,
		Colour: "#131313",
	})
	app.Bind(&wailsstruct{})
	app.Run()
}