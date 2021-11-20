---
description: ''
sidebar: 'docs'
next: '/docs/pcb/'
---

# Introduction

Existing consumer fan controllers can be expensive, contain properietry connectors and the software that ships with them is usually incompatible with any operating system aside from Windows.

The aim of this project is make an accessible and extensible fan controller that is built for the user.


## Features
- Cheap, open source hardware built on top of the readily available Raspberry Pi Pico
- Lightweight desktop app
- Command line interface
- Support for external temp sensors
- User configurable fan curves (coming soon!)
- DRGB strip support (coming soon!)



## Parts List
__!! Note: If you can solder SMD components, there's a PCB available. [Please refer to the PCB documentation for the relevant parts list](/docs/pcb). !!__

Here's a list of parts you'll need if you'd like to build the hardware yourself:

- USB to UART module
- [Raspberry Pi Pico](https://www.raspberrypi.org/products/raspberry-pi-pico/)
- x2 Female and Male JST Connectors (For temp sensors, optional)
- 1 of each, per fan:
  - 4-Pin PWM Fan Connector Male
  - 10k Resistors
