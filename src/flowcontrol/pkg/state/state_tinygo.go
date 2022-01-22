//go:build tinygo
// +build tinygo

package state

import (
	"github.com/charlie-haley/flowcontrol/pkg/sensor"
	"github.com/francoispqt/gojay"
)

// update values in state
func (s *State) Update() bool {
	stateUpdated := false
	//ensure sensor data is up to date
	var cur sensor.Sensors
	for i, sn := range s.Sensors {
		temp := sn.Temp()
		// check if sensor value in state is the same as current
		if s.Sensors[i].Value != temp {
			stateUpdated = true
			cur = append(cur, sensor.Sensor{
				Position: sn.Position,
				Value:    temp,
				Pin:      sn.Pin},
			)
		}
	}
	if stateUpdated {
		s.Sensors = cur
	}

	return stateUpdated
}

// State
func (s *State) IsNil() bool {
	return s == nil
}

func (s *State) MarshalJSONObject(enc *gojay.Encoder) {
	enc.ArrayKey("sensors", s.Sensors)
	enc.ArrayKey("fans", s.Fans)
	enc.ArrayKey("curve", s.Curve)
}
