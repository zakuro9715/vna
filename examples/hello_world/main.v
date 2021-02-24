module main

import zakuro9715.vna { Context, Rect }

struct Game {
}

fn (g &Game) init(ctx &Context) {
}

fn (g &Game) update(ctx &Context) {
}

fn (g &Game) draw(ctx &Context) {
	Rect{10, 10, 200, 100}.draw(ctx, r: 255, g: 0, b: 0)
}

fn main() {
	game := &Game{}
	vna.run(game)
}
