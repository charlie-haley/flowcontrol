//go:build tinygo
// +build tinygo

package datapoint

import (
	"github.com/francoispqt/gojay"
)

// fetches the % to set the fan to based on the defined curve using linear interpolation
func (d DataPoints) CurrentPercent(temp int) int {
	for i, dp := range d {
		// first iteration is a special case due to not being able to get previous value
		if i == 0 {
			// if current temp is less than data point, just use percent value as min on first iteration
			if temp < dp.Temp {
				return dp.Percent
			}
			// else skip this iteration
			continue
		}
		// linear interpolation to calculate current position between data points
		if temp <= dp.Temp && temp >= d[i-1].Temp {
			x1 := d[i-1].Temp
			y1 := d[i-1].Percent
			x2 := dp.Temp
			y2 := dp.Percent
			return y1 + (temp-x1)*((y2-y1)/(x2-x1))
		}
		continue
	}
	// failling everthing, get last data point to be safe
	return d[(len(d) - 1)].Percent
}

// DataPoints
func (d DataPoints) IsNil() bool {
	return len(d) == 0
}

func (d DataPoints) MarshalJSONArray(enc *gojay.Encoder) {
	if len(d) > 0 {
		for _, f := range d {
			enc.Object(&f)
		}
	}
}

// DataPoint
func (d *DataPoint) IsNil() bool {
	return d == nil
}

func (d *DataPoint) MarshalJSONObject(enc *gojay.Encoder) {
	enc.IntKey("temp", d.Temp)
	enc.IntKey("percent", d.Percent)
}
