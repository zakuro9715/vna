module vna

fn test_color_str() {
	assert Color{16, 33, 166, 255}.str() == '#1011a6'
	assert Color{16, 33, 166, 160}.str() == '#1011a6a0'
}
