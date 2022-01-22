package state

import (
	"github.com/charlie-haley/flowcontrol/pkg/datapoint"
	"github.com/charlie-haley/flowcontrol/pkg/fan"
	"github.com/charlie-haley/flowcontrol/pkg/sensor"
)

type State struct {
	Sensors sensor.Sensors
	Fans    fan.Fans
	Curve   datapoint.DataPoints
}
