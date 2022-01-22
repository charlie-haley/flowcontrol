ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
VERSION="development"

setup:
	mkdir -p dist/firmware
	mkdir -p dist/gui
	mkdir -p dist/cli

lint:
	golangci-lint run ./src/flowcontrol/*.go

build-firmware: setup
	cd src/flowcontrol; ~/Development/tinygo/build/tinygo build --tags="tinygo" -o=$(ROOT_DIR)/dist/firmware/main.uf2 -target=pico ./cmd/firmware/main.go

build-gui-%: setup
	cd src/flowcontrol; wails build -x $*/amd64 --tags="$*,gui" --verbose -ldflags="-X 'main.appver=$(VERSION)'"
