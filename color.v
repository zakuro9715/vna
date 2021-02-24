module vna

import gx

pub struct Color {
pub:
	r byte
	g byte
	b byte
	a byte = 255
}

pub fn (c Color) str() string {
	return '#$c.r.hex()$c.g.hex()$c.b.hex()' + (if c.a < 255 {
		c.a.hex()
	} else {
		''
	})
}

[inline]
fn (c Color) to_gx() gx.Color {
	return gx.Color{c.r, c.g, c.b, c.a}
}
