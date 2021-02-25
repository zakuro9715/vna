module fmath

fn test_min_max() {
	assert min(0, 1) == 0
	assert min(0, -1) == -1

	assert max(0, 1) == 1
	assert max(0, -1) == 0
}
