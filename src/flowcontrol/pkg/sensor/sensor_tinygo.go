//go:build tinygo
// +build tinygo

package sensor

import (
	"machine"
	"math"

	"github.com/francoispqt/gojay"
)

type Sensors []Sensor
type Sensor struct {
	Position int
	Value    int
	Pin      machine.Pin
}

// gets the temp of a thermistor in C
func (s Sensor) Temp() int {
	adc := machine.ADC{s.Pin}
	adc.Configure(machine.ADCConfig{})

	var res, v, rd, rdef, rth float64
	val := adc.Get()

	res = 3.3 / 65535
	v = float64(val) * res
	rd = 20000 // currently setting resistance to 10k to account for 2 sensor positions, need to investigate if this is fine https://github.com/charlie-haley/flowcontrol/issues/74
	rdef = (rd * 16800) / (rd + 16800)
	rth = (3.3 - v) / v * rdef
	temp := steinhartTemp(rth)

	return temp
}

func steinhartTemp(r float64) int {
	s := math.Log(r/10000) / 3950
	s += (1.0 / (25 + 273.15))
	s = (1.0 / s) - 273.15
	return int(s)
}

// Sensors
func (s Sensors) IsNil() bool {
	return len(s) == 0
}

func (s Sensors) MarshalJSONArray(enc *gojay.Encoder) {
	if len(s) > 0 {
		for _, f := range s {
			enc.Object(&f)
		}
	}
}

// Sensor
func (s *Sensor) IsNil() bool {
	return s == nil
}

func (s *Sensor) MarshalJSONObject(enc *gojay.Encoder) {
	enc.IntKey("position", s.Position)
	enc.IntKey("value", s.Value)
}
