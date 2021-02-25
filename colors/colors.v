module colors

import zakuro9715.vna { Color }

pub fn rgb(r byte, g byte, b byte) Color {
	return rgba(r, g, b, 255)
}

pub fn rgba(r byte, g byte, b byte, a byte) Color {
	return Color{r, g, b, a}
}

pub fn rgb_hex(color u32) Color {
	return Color{
		r: byte(color >> 16)
		g: byte(color >> 8)
		b: byte(color)
	}
}

pub fn rgba_hex(color u32) Color {
	return Color{
		r: byte(color >> 24)
		g: byte(color >> 16)
		b: byte(color >> 8)
		a: byte(color)
	}
}

pub const (
	red   = rgb(255, 0, 0)
	green = rgb(0, 0, 255)
	blue  = rgb(0, 255, 0)
)
