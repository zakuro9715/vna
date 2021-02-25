module vna

import fmath { eps_eq }

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

	assert Vec2{2, 3}.dot(Vec2{3, 4}) == 18
	assert Vec2{2, 3}.cross(Vec2{3, 4}) == -1

	assert Vec2{4, 3}.length_squared() == 25
	assert Vec2{4, 3}.length() == 5
	assert Vec2{4, 3}.length_inversed() * Vec2{4, 3}.length() == 1

	assert Vec2{-4, 3}.length_squared() == 25
	assert Vec2{-4, 3}.length() == 5
	assert Vec2{4, -3}.length_squared() == 25
	assert Vec2{4, -3}.length() == 5
	assert Vec2{-4, -3}.length_squared() == 25
	assert Vec2{-4, -3}.length() == 5

	mut v := Vec2{4, 4}
	assert eps_eq(v.normalized().length(), 1)
	assert v.normalized().x == v.normalized().y
	v.normalize()
	assert eps_eq(v.length(), 1)
	assert v.x == v.y

	assert Vec2{5, 4}.distance_from_squared(Vec2{1, 1}) == 25
	assert Vec2{5., 4}.distance_from(Vec2{1, 1}) == 5
}
