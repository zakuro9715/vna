module vna

pub interface GameComponent {
	init(ctx &Context)
	update(ctx &Context)
	draw(ctx &Context)
}
