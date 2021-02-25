module vna

fn test_vec2() {
	assert Vec2{0, 0}.is_zero()
	assert !Vec2{1, 0}.is_zero()
	assert !Vec2{0, 1}.is_zero()

	assert (Vec2{1, 1} + Vec2{-1, -1}).is_zero()

	assert Vec2{1, 2} + Vec2{3, 4} == Vec2{4, 6}
	assert Vec2{1, 2} - Vec2{3, 4} == Vec2{-2, -2}
	assert Vec2{3, 4} * Vec2{3, 2} == Vec2{9, 8}
	assert Vec2{3, 4} / Vec2{3, 2} == Vec2{1, 2}
	assert Vec2{1, 2}.add(1) == Vec2{2, 3}
	assert Vec2{1, 2}.sub(1) == Vec2{0, 1}
	assert Vec2{1, 2}.mul(1.5) == Vec2{1.5, 3}
	assert Vec2{1.5, 3}.div(1.5) == Vec2{1, 2}
	assert Vec2{1, 2}.negative() == Vec2{-1, -2}

	assert Vec2{4, 3}.length_squared() == 25
	assert Vec2{4, 3}.length() == 5
	assert Vec2{-4, 3}.length_squared() == 25
	assert Vec2{-4, 3}.length() == 5
	assert Vec2{4, -3}.length_squared() == 25
	assert Vec2{4, -3}.length() == 5
	assert Vec2{-4, -3}.length_squared() == 25
	assert Vec2{-4, -3}.length() == 5
}
