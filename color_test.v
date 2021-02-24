module vna

import gx

fn test_color_str() {
	assert Color{0x11, 0x22, 0x33, 0xff}.str() == '#112233'
	assert Color{0x11, 0x22, 0x33, 0x44}.str() == '#11223344'
}

fn test_color_to_gx() {
	assert (Color{1, 2, 3, 4}).to_gx() == gx.Color{1, 2, 3, 4}
}
