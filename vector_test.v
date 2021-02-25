module vna

fn test_vector2() {
	assert Vector2{0, 0}.is_zero()
	assert !Vector2{1, 0}.is_zero()
	assert !Vector2{0, 1}.is_zero()
}
