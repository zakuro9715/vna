module fmath

import math

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
