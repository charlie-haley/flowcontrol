# flowcontrol
An open source multiplatform PC fan controller.


**This project is still in a very early state. If you'd like to contribute, [please take a look at our outstanding issues](https://github.com/charlie-haley/flowcontrol/issues) and raise a PR** 
Alternatively, head over to [discussions](https://github.com/charlie-haley/flowcontrol/discussions) if you have any questions or ideas.

## Installation


### Build from source
#### flowcontrol
```
wails build
```
#### flowcontrol-monitor
```
dotnet publish -r win-x64 -c Release /p:PublishSingleFile=true --self-contained True
```
Replace `win-x64` with `linux-x64` if you're compiling for Linux or `osx-x64` for OSX. More information on [available runtime indentifiers can be found here](https://docs.microsoft.com/en-us/dotnet/core/rid-catalog)
#### flowcontrol-cli
```
go install flowctl
```

## Items Needed

As well as the items listed below, you'll need a soldering iron, wire and prototype board.

- CH340G USB to TTL Serial Adapter Module (Any USB to UART should work, the CH340 is cheap and widely available)
- Raspberry Pi Pico
- x2 Male 4-Pin PC Fan Headers
- x2 Female/Male JST Connectors of your choice (This is used for thermistors)
- x2 10k Resistors 

[A PCB design is currently in progress](https://github.com/charlie-haley/flowcontrol/issues/9)

## Local Development

### flowcontrol
```
wails serve
npm run serve
```

### flowcontrol-monitor
```
dotnet run
```

### flowcontrol-cli
```
go install flowctl
```
