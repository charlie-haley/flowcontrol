# src

Aside from the firmware, the application consists of 3 parts:

- [flowcontrol](#flowcontrol)
- [flowcontrol-monitor](#flowcontrol-monitor)
- [flowcontrol-cli](#flowcontrol-cli)

`flowcontrol` and `flowcontrol-cli` are currently independent, I'm looking to consolidate their codebase now they're both using Go and utilise shared packaged for stuff like serial communication.

## flowcontrol
This is the GUI application. It's built using [wails](https://wails.app/)

## flowcontrol-monitor
This is the supplementary application to the main one. It provides system metrics such as GPU Clock and temperatures using [LibreHardwareMonitorLib](https://github.com/LibreHardwareMonitor/LibreHardwareMonitor).

## flowcontrol-cli
A CLI application built using [cobra](https://github.com/spf13/cobra)