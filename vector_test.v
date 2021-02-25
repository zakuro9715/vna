module vna

fn test_vector2() {
	assert Vector2{0, 0}.is_zero()
	assert !Vector2{1, 0}.is_zero()
	assert !Vector2{0, 1}.is_zero()
}

fn test_vector2_operators() {
	assert (Vector2{1, 1} + Vector2{-1, -1}).is_zero()
	assert Vector2{1, 2} + Vector2{3, 4} == Vector2{4, 6}
	assert Vector2{1, 2} - Vector2{3, 4} == Vector2{-2, -2}
	assert Vector2{1, 2}.mul(1.5) == Vector2{1.5, 3}
	assert Vector2{1.5, 3}.div(1.5) == Vector2{1, 2}
	assert Vector2{1, 2}.negative() == Vector2{-1, -2}
}
