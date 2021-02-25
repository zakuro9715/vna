module utils

pub const (
	eps = 0.00000001
)

[inline]
pub fn max<T>(a T, b T) T {
	if a > b {
		return a
	}
	return b
}

[inline]
pub fn min<T>(a T, b T) T {
	if a < b {
		return a
	}
	return b
}
