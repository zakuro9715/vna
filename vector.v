module vna

import fmath { eps_eq, sqrt }

pub struct Vec2 {
pub mut:
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

pub fn (mut v Vec2) inverse() {
	v.x *= -1
	v.y *= -1
}

pub fn (v Vec2) inversed() Vec2 {
	return v.mul(-1)
}

pub fn (mut v Vec2) normalize() {
	lv := v.length_inversed()
	v.x *= lv
	v.y *= lv
}

pub fn (v Vec2) normalized() Vec2 {
	return v.mul(v.length_inversed())
}

pub fn (v Vec2) is_normalized() bool {
	return eps_eq(v.length_squared(), 1)
}

pub fn (v Vec2) length_squared() f32 {
	return v.x * v.x + v.y * v.y
}

pub fn (v Vec2) length() f32 {
	return sqrt(v.length_squared())
}

pub fn (v Vec2) length_inversed() f32 {
	return 1 / v.length()
}

pub fn (v Vec2) distance_from_squared(from Vec2) f32 {
	return (from - v).length_squared()
}

pub fn (v Vec2) distance_from(from Vec2) f32 {
	return (from - v).length()
}
