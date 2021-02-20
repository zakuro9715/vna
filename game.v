module vna

import gg
import gx

pub struct Game {
pub mut:
	context Context
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

fn frame(game &Game) {
	game.gg.begin()
	game.gg.end()
}

fn init(_ &Game) {}

pub fn (g &Game) run() {
	g.gg.run()
}
