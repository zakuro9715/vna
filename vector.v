module vna

pub struct Vector2 {
pub:
	x f32
	y f32
}

pub fn (v Vector2) is_zero() bool {
	return v.x == 0 && v.y == 0
}

pub fn (lhs Vector2) + (rhs Vector2) Vector2 {
	return Vector2{lhs.x + rhs.x, lhs.y + rhs.y}
}

pub fn (lhs Vector2) - (rhs Vector2) Vector2 {
	return Vector2{lhs.x - rhs.x, lhs.y - rhs.y}
}

pub fn (lhs Vector2) mul(rhs f32) Vector2 {
	return Vector2{lhs.x * rhs, lhs.y * rhs}
}

pub fn (lhs Vector2) div(rhs f32) Vector2 {
	return Vector2{lhs.x / rhs, lhs.y / rhs}
}

pub fn (v Vector2) negative() Vector2 {
	return v.mul(-1)
}
