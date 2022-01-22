//go:build !tinygo
// +build !tinygo

package sensor

type Sensors []Sensor
type Sensor struct {
	Position int
	Value    int
}
