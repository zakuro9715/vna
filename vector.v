module vna

import fmath { sqrt }

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

pub fn (lhs Vec2) * (rhs Vec2) Vec2 {
	return Vec2{lhs.x * rhs.x, lhs.y * rhs.y}
}

pub fn (lhs Vec2) / (rhs Vec2) Vec2 {
	return Vec2{lhs.x / rhs.x, lhs.y / rhs.y}
}

pub fn (lhs Vec2) add(rhs f32) Vec2 {
	return Vec2{lhs.x + rhs, lhs.y + rhs}
}

pub fn (lhs Vec2) sub(rhs f32) Vec2 {
	return Vec2{lhs.x - rhs, lhs.y - rhs}
}

pub fn (lhs Vec2) mul(rhs f32) Vec2 {
	return Vec2{lhs.x * rhs, lhs.y * rhs}
}

pub fn (lhs Vec2) div(rhs f32) Vec2 {
	return Vec2{lhs.x / rhs, lhs.y / rhs}
}

pub fn (lhs Vec2) dot(rhs Vec2) f32 {
	return lhs.x * rhs.x + lhs.y * rhs.y
}

pub fn (lhs Vec2) cross(rhs Vec2) f32 {
	return lhs.x * rhs.y - lhs.y * rhs.x
}

pub fn (v Vec2) negative() Vec2 {
	return v.mul(-1)
}

pub fn (v Vec2) length_squared() f32 {
	return v.x * v.x + v.y * v.y
}

pub fn (v Vec2) length() f32 {
	return sqrt(v.length_squared())
}
