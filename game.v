module vna

import gg
import gx

pub struct Game {
pub mut:
	context    Context
	components []GameComponent
mut:
	gg &gg.Context
}

pub struct GameConfig {
	width  int    = 600
	height int    = 480
	title  string = 'Game'
}

pub struct Context {}

pub fn new(c GameConfig) &Game {
	mut game := &Game{
		gg: 0
		context: Context{}
	}
	game.gg = gg.new_context(
		bg_color: gx.Color{
			r: 100
			g: 149
			b: 237
		}
		width: c.width
		height: c.height
		create_window: true
		window_title: c.title
		frame_fn: frame
		init_fn: init
		user_data: game
	)
	return game
}

pub fn (g &Game) init() {
	for c in g.components {
		c.init(&g.context)
	}
}

pub fn (g &Game) update() {
	for c in g.components {
		c.update(&g.context)
	}
}

pub fn (g &Game) draw() {
	for c in g.components {
		c.draw(&g.context)
	}
}

fn frame(game &Game) {
	game.gg.begin()
	game.update()
	game.draw()
	game.gg.end()
}

fn init(game &Game) {
	game.init()
}

pub fn (g &Game) run() {
	g.gg.run()
}
