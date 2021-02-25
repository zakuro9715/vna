module colors

fn test_rgb() {
	c := rgb(1, 2, 3)
	assert c.r == 1
	assert c.g == 2
	assert c.b == 3
	assert c.a == 255

	c2 := hex(0x010203)
	assert c2 == c
}

fn test_rgba() {
	c := rgba(1, 2, 3, 4)
	assert c.r == 1
	assert c.g == 2
	assert c.b == 3
	assert c.a == 4
	c2 := hex_a(0x01020304)
	assert c2 == c
}

fn test_colors() {
	assert white == rgba(255, 255, 255, 255)
	assert transparent == rgba(255, 255, 255, 0)
}
