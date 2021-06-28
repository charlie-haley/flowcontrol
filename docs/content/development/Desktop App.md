---
title: "Desktop App"
weight: 5
---

## Prerequisites

- Go 1.12+
- npm
- net5 SDK (Optional, only required if you're using the monitor)

### Linux
- gcc, gtk, webkitgtk

## Running Locally

### flowcontrol
```
cd src/flowcontrol/
wails serve

cd src/flowcontrol/frontend
npm run serve
```

### flowcontrol-monitor
```
cd src/flowcontrol-monitor/
dotnet run
```
