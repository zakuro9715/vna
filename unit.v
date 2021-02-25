module vna

fn unit_x<T>() T {
	mut res := T{}
	res.x = 1
	return res
}

fn unit_y<T>() T {
	mut res := T{}
	res.y = 1
	return res
}
