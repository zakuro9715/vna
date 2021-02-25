module utils

[inline]
fn max<T>(a T, b T) T {
	if a > b {
		return a
	}
	return b
}

[inline]
fn min<T>(a T, b T) T {
	if a < b {
		return a
	}
	return b
}
