module vna

fn test_rect() {
	rect := Rect{2, 3, 4, 5}
	assert rect.pos() == Point{2, 3}
	assert rect.size() == Size{4, 5}
	assert rect.area() == 20

	assert rect.top() == 3
	assert rect.bottom() == 8
	assert rect.left() == 2
	assert rect.right() == 6

	assert rect.extend(width: 3, height: 4) == Rect{2, 3, 7, 9}
}
