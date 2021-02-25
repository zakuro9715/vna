module colors

fn test_rgb() {
	c := rgb(1, 2, 3)
	assert c.r == 1
	assert c.g == 2
	assert c.b == 3
	assert c.a == 255
}

fn test_rgba() {
	c := rgba(1, 2, 3, 4)
	assert c.r == 1
	assert c.g == 2
	assert c.b == 3
	assert c.a == 4
}
