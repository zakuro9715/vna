module vna

pub struct Vector2 {
pub:
	x f32
	y f32
}

pub fn (v Vector2) is_zero() bool {
	return v.x == 0 && v.y == 0
}
