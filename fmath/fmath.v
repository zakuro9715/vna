module fmath

import math

pub const (
	eps = f32(0.00001)
)

[inline]
pub fn eps_eq(lhs f32, rhs f32) bool {
	return abs(lhs - rhs) < fmath.eps
}

[inline]
pub fn cos(v f32) f32 {
	return math.cosf(v)
}

[inline]
pub fn sin(v f32) f32 {
	return math.sinf(v)
}

[inline]
pub fn tan(v f32) f32 {
	return math.tanf(v)
}

[inline]
pub fn pow(a f32, b f32) f32 {
	return math.powf(a, b)
}

[inline]
pub fn sqrt(v f32) f32 {
	return math.sqrtf(v)
}

[inline]
pub fn max(a f32, b f32) f32 {
	if a > b {
		return a
	}
	return b
}

[inline]
pub fn min(a f32, b f32) f32 {
	if a < b {
		return a
	}
	return b
}

[inline]
pub fn abs(v f32) f32 {
	if v < 0 {
		return -v
	}
	return v
}
