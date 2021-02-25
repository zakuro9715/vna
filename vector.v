module vna

pub struct Vec2 {
pub:
	x f32
	y f32
}

pub fn (v Vec2) is_zero() bool {
	return v.x == 0 && v.y == 0
}

pub fn (lhs Vec2) + (rhs Vec2) Vec2 {
	return Vec2{lhs.x + rhs.x, lhs.y + rhs.y}
}

pub fn (lhs Vec2) - (rhs Vec2) Vec2 {
	return Vec2{lhs.x - rhs.x, lhs.y - rhs.y}
}

pub fn (lhs Vec2) mul(rhs f32) Vec2 {
	return Vec2{lhs.x * rhs, lhs.y * rhs}
}

pub fn (lhs Vec2) div(rhs f32) Vec2 {
	return Vec2{lhs.x / rhs, lhs.y / rhs}
}

pub fn (v Vec2) negative() Vec2 {
	return v.mul(-1)
}
