module vna

fn test_vec2() {
	assert Vec2{0, 0}.is_zero()
	assert !Vec2{1, 0}.is_zero()
	assert !Vec2{0, 1}.is_zero()
}

fn test_vec2_operators() {
	assert (Vec2{1, 1} + Vec2{-1, -1}).is_zero()
	assert Vec2{1, 2} + Vec2{3, 4} == Vec2{4, 6}
	assert Vec2{1, 2} - Vec2{3, 4} == Vec2{-2, -2}
	assert Vec2{1, 2}.mul(1.5) == Vec2{1.5, 3}
	assert Vec2{1.5, 3}.div(1.5) == Vec2{1, 2}
	assert Vec2{1, 2}.negative() == Vec2{-1, -2}
}
