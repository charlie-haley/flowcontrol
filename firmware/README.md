# firmware

The firmware has been written around a [rp2040 microcontroller](https://www.raspberrypi.org/documentation/rp2040/getting-started/), prototypes have been built using the [Raspberry Pi Pico](https://www.raspberrypi.org/products/raspberry-pi-pico/)


## Compiling with tinygo
```
tinygo build -o=$(pwd)/main.uf2 -target=pico main.go
```
