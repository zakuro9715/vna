module vna

import gg
import gx

// pub type Game = GameComponent
pub interface Game {
	init(ctx &Context)
	update(ctx &Context)
	draw(ctx &Context)
}

pub struct Context {
mut:
	game       Game
	gg         &gg.Context
	cur_title  string
	cur_width  int
	cur_height int
pub mut:
	title      string
	width      int
	height     int
	components ComponentManager
}

fn (mut ctx Context) on_game_initing() {
}

fn (mut ctx Context) on_game_inited() {
	ctx.cur_title = ctx.title
	ctx.cur_width = ctx.width
	ctx.cur_height = ctx.height
}

fn (mut ctx Context) on_game_updating() {
}

fn (mut ctx Context) on_game_updated() {
}

fn (mut ctx Context) on_game_drawing() {
}

fn (mut ctx Context) on_game_drawed() {
}

fn frame(mut ctx Context) {
	ctx.gg.begin()

	ctx.on_game_updating()
	ctx.game.update(ctx)
	ctx.components.update(ctx)
	ctx.on_game_updated()

	ctx.on_game_drawing()
	ctx.game.draw(ctx)
	ctx.components.draw(ctx)
	ctx.on_game_drawed()

	ctx.gg.end()
}

fn init(_ &Context) {
}

pub fn run(g Game) {
	mut ctx := &Context{
		gg: 0
	}

	ctx.on_game_initing()
	g.init(ctx)
	ctx.components.init(ctx)
	ctx.on_game_inited()

	ctx.gg = gg.new_context(
		bg_color: gx.Color{
			r: 100
			g: 149
			b: 237
		}
		width: ctx.width
		height: ctx.height
		create_window: true
		window_title: ctx.title
		frame_fn: frame
		init_fn: init
		user_data: ctx
	)
	ctx.gg.run()
}
