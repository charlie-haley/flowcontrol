---
description: ''
sidebar: 'docs'
---

## Desktop Application
This is the GUI application. It's built using [wails](https://wails.app/)

## Prerequisites
- Go 1.12+
- npm
- net5 SDK (Optional, only required if you're using the monitor)

### Linux
- gcc, gtk, webkitgtk

## Running locally

### flowcontrol
```
cd src/flowcontrol/
wails serve

cd src/flowcontrol/frontend
npm run serve
```

### flowcontrol-monitor
This is the supplementary application to the main one. It provides system metrics such as GPU Clock and temperatures using [LibreHardwareMonitorLib](https://github.com/LibreHardwareMonitor/LibreHardwareMonitor). I'm aiming to make this an optional component for people who want hardware metrics beyond the scope of the controller, it's currently bundled with the release.
```
cd src/flowcontrol-monitor/
dotnet run
```