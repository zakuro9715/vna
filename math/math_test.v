module math

fn test_min_max() {
	assert min(0, 1) == 0
	assert min(0, -1) == -1
	assert min('a', 'b') == 'a'
	assert min('b', 'a') == 'a'

	assert max(0, 1) == 1
	assert max(0, -1) == 0
	assert max('a', 'b') == 'b'
	assert max('b', 'a') == 'b'
}
