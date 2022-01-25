ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
VERSION="development"

setup:
	mkdir -p dist/firmware
	mkdir -p dist/gui
	mkdir -p dist/cli

lint:
	golangci-lint run ./src/flowcontrol/*.go

build-firmware: setup
	cd src/flowcontrol; tinygo build --tags="tinygo" -o=$(ROOT_DIR)/dist/firmware/main.uf2 -target=pico ./cmd/firmware/main.go

build-gui-%: setup
	cd $(ROOT_DIR)/src/flowcontrol; wails build -x $*/amd64 --tags="$*,gui" --verbose -ldflags="-X 'main.appver=$(VERSION)'"

build-monitor-%: setup
	if [ "$*" = "windows" ]; then \
		dotnet publish $(ROOT_DIR)/src/flowcontrol-monitor -r win-x64 -c Release /p:PublishSingleFile=true --self-contained True; \
	elif [ "$*" = "linux" ]; then \
		dotnet publish $(ROOT_DIR)/src/flowcontrol-monitor -r linux-x64 -c Release /p:PublishSingleFile=true --self-contained True; \
	elif [ "$*" = "darwin" ]; then \
		dotnet publish $(ROOT_DIR)/src/flowcontrol-monitor -r osx-x64 -c Release /p:PublishSingleFile=true --self-contained True; \
	fi
