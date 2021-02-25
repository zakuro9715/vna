module vna

import gx

pub struct Color {
pub mut:
	r byte
	g byte
	b byte
	a byte = 255
}

pub enum Transparency {
	opaque
	translucent
	transparent
}

pub enum GrayscaleMode {
	default
	bt601
}

pub fn (c &Color) opacity() f32 {
	return f32(c.a) / f32(255)
}

pub fn (c &Color) transparency() Transparency {
	match c.a {
		0 { return .transparent }
		255 { return .opaque }
		else { return .translucent }
	}
}

pub fn (c &Color) grayscale(mode GrayscaleMode) f32 {
	return match mode {
		.default, .bt601 {
			(0.299 * f32(c.r) / 255.0) + (0.587 * f32(c.g) / 255.0) + (0.114 * f32(c.b) / 255.0)
		}
	}
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
