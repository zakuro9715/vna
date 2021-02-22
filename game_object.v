module vna

pub interface GameObject {
	init(ctx &Context)
	update(ctx &Context)
	draw(ctx &Context)
}
