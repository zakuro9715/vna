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

pub struct Rect {
pub:
	x      int
	y      int
	width  int
	height int
}

pub fn (r Rect) extend(size Size) Rect {
	return Rect{
		x: r.x
		y: r.y
		width: r.width + size.width
		height: r.height + size.height
	}
}

pub fn (r Rect) pos() Point {
	return Point{r.x, r.y}
}

pub fn (r Rect) size() Size {
	return Size{r.width, r.height}
}

pub fn (r Rect) area() int {
	return r.width * r.height
}

pub fn (r Rect) left() int {
	return r.x
}

pub fn (r Rect) right() int {
	return r.x + r.width
}

pub fn (r Rect) top() int {
	return r.y
}

pub fn (r Rect) bottom() int {
	return r.y + r.height
}
