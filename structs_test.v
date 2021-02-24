module vna

fn test_point() {
	assert Point{1, 2} + Point{10, 11} == Point{11, 13}
	assert Point{1, 2} - Point{10, 11} == Point{-9, -9}
	assert Point{10, 11} - Point{1, 2} == Point{9, 9}
	assert Point{}.is_zero()
	assert !Point{1, 0}.is_zero()
	assert !Point{0, 1}.is_zero()
}

fn test_size() {
	assert Size{1, 2} + Size{10, 11} == Size{11, 13}
	assert Size{1, 2} - Size{10, 11} == Size{-9, -9}
	assert Size{10, 11} - Size{1, 2} == Size{9, 9}
	assert Size{}.is_zero()
	assert !Size{1, 0}.is_zero()
	assert !Size{0, 1}.is_zero()
}
