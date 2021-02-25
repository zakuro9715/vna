module vna

pub struct Rect {
pub:
	x      f32
	y      f32
	width  f32
	height f32
}

pub fn (r Rect) extend(p Vec2) Rect {
	return Rect{
		x: r.x
		y: r.y
		width: r.width + p.x
		height: r.height + p.y
	}
}

pub fn (r Rect) pos() Vec2 {
	return Vec2{r.x, r.y}
}

pub fn (r Rect) size() Vec2 {
	return Vec2{r.width, r.height}
}

pub fn (r Rect) area() f32 {
	return r.width * r.height
}

pub fn (r Rect) left() f32 {
	return r.x
}

pub fn (r Rect) right() f32 {
	return r.x + r.width
}

pub fn (r Rect) top() f32 {
	return r.y
}

pub fn (r Rect) bottom() f32 {
	return r.y + r.height
}

pub fn (r Rect) draw(ctx &Context, color Color) {
	ctx.gg.draw_rect(r.x, r.y, r.width, r.height, color.to_gx())
}
