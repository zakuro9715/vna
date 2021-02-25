module colors

import zakuro9715.vna { Color }

pub fn rgb(r byte, g byte, b byte) Color {
	return rgba(r, g, b, 255)
}

pub fn rgba(r byte, g byte, b byte, a byte) Color {
	return Color{r, g, b, a}
}

pub const (
	red   = rgb(255, 0, 0)
	green = rgb(0, 0, 255)
	blue  = rgb(0, 255, 0)
)
