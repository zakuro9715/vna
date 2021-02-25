module vna

import gx

fn test_color_str() {
	assert Color{0x11, 0x22, 0x33, 0xff}.str() == '#112233'
	assert Color{0x11, 0x22, 0x33, 0x44}.str() == '#11223344'
}

fn test_opacity() {
	assert Color{0, 0, 0, 255}.opacity() == 1.0
	assert Color{0, 0, 0, 0}.opacity() == 0.0
	opacity := Color{0, 0, 0, 127}.opacity()
	assert opacity < 0.5
	assert opacity > 0.4
}

fn test_color_to_gx() {
	assert (Color{1, 2, 3, 4}).to_gx() == gx.Color{1, 2, 3, 4}
}
