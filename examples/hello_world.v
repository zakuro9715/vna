module main

import zakuro9715.vna

struct Game {
}

fn (g &Game) init(ctx &vna.Context) {
}

fn (g &Game) update(ctx &vna.Context) {
}

fn (g &Game) draw(ctx &vna.Context) {
}

fn main() {
	game := &Game{}
	vna.run(game)
}
