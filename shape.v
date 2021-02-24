module vna

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

pub fn (r Rect) draw(ctx &Context, color Color) {
	ctx.gg.draw_rect(r.x, r.y, r.width, r.height, color.to_gx())
}
