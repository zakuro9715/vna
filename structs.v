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

pub struct Size {
pub:
	width  int
	height int
}

pub fn (s Size) is_zero() bool {
	return s.width == 0 && s.height == 0
}

pub fn (lhs Size) + (rhs Size) Size {
	return {
		width: lhs.width + rhs.width
		height: lhs.height + rhs.height
	}
}

pub fn (lhs Size) - (rhs Size) Size {
	return {
		width: lhs.width - rhs.width
		height: lhs.height - rhs.height
	}
}
