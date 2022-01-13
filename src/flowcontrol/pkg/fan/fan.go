//go:build !tinygo
// +build !tinygo

package fan

type Fans []Fan
type Fan struct {
	Position int
	Auto     bool
	Speed    int
	Rpm      int
}
