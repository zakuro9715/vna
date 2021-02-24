module vna

fn test_point() {
	assert Point{1, 2} + Point{10, 11} == Point{11, 13}
	assert Point{1, 2} - Point{10, 11} == Point{-9, -9}
	assert Point{10, 11} - Point{1, 2} == Point{9, 9}
	assert Point{}.is_zero()
	assert !Point{1, 0}.is_zero()
	assert !Point{0, 1}.is_zero()
}
