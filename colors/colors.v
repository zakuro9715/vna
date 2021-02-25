module colors

import zakuro9715.vna { Color }

pub fn rgb(r byte, g byte, b byte) Color {
	return rgba(r, g, b, 255)
}

pub fn rgba(r byte, g byte, b byte, a byte) Color {
	return Color{r, g, b, a}
}

pub fn hex(color u32) Color {
	return Color{
		r: byte(color >> 16)
		g: byte(color >> 8)
		b: byte(color)
	}
}

pub fn hex_a(color u32) Color {
	return Color{
		r: byte(color >> 24)
		g: byte(color >> 16)
		b: byte(color >> 8)
		a: byte(color)
	}
}

pub const (
	transparent = hex_a(0xffffff00)
	black       = hex(0x000000)
	white       = hex(0xffffff)
	red         = hex(0xff0000)
	green       = hex(0x00ff00)
	blue        = hex(0x0000ff)
	yellow      = hex(0xffff00)
)
