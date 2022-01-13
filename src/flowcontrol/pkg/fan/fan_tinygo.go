//go:build tinygo
// +build tinygo

package fan

import (
	"machine"

	"github.com/francoispqt/gojay"
)

type Fans []Fan
type Fan struct {
	Position int
	Auto     bool
	Speed    int
	Rpm      int
	TachPin  machine.Pin
	PwmPin   machine.Pin
}

// sets the current fan speed in %
func (f *Fan) Set(speed uint32) {
	pwm, _ := machine.PWMGroup(f.PwmPin)
	pwm.Configure(machine.PWMConfig{Period: 1e9 / 25000})
	channel, _ := pwm.Channel(f.PwmPin)
	pwm.Set(channel, (pwm.Top()/100)*speed)
}

// Fans
func (f Fans) IsNil() bool {
	return len(f) == 0
}

func (f Fans) MarshalJSONArray(enc *gojay.Encoder) {
	if len(f) > 0 {
		for _, f := range f {
			enc.Object(&f)
		}
	}
}

// Fan
func (f *Fan) IsNil() bool {
	return f == nil
}

func (f *Fan) MarshalJSONObject(enc *gojay.Encoder) {
	enc.IntKey("position", f.Position)
	enc.BoolKey("auto", f.Auto)
	enc.IntKey("speed", f.Speed)
	enc.IntKey("rpm", f.Rpm)
}
