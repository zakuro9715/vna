module vna

pub struct Point {
pub:
	x int
	y int
}

pub fn (p Point) is_zero() bool {
	return p.x == 0 && p.y == 0
}

pub fn (lhs Point) + (rhs Point) Point {
	return {
		x: lhs.x + rhs.x
		y: lhs.y + rhs.y
	}
}

pub fn (lhs Point) - (rhs Point) Point {
	return {
		x: lhs.x - rhs.x
		y: lhs.y - rhs.y
	}
}
