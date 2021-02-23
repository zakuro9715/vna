module vna

pub interface GameComponent {
	init(ctx &Context)
	update(ctx &Context)
	draw(ctx &Context)
}

pub struct ComponentManager {
mut:
	store map[string]GameComponent

	not_inited_components []&GameComponent
}

pub fn (mut m ComponentManager) add(name string, c GameComponent) {
	m.store[name] = c
	m.not_inited_components << &c
}

pub fn (m &ComponentManager) get(name string) ?GameComponent {
	return m.store[name]
}

pub fn (mut m ComponentManager) init(ctx &Context) {
	for _, c in m.store {
		c.init(ctx)
	}
	m.not_inited_components = []
}

pub fn (mut m ComponentManager) update(ctx &Context) {
	for c in m.not_inited_components {
		c.init(ctx)
	}
	m.not_inited_components = []
	for _, c in m.store {
		c.update(ctx)
	}
}

pub fn (m &ComponentManager) draw(ctx &Context) {
	for _, c in m.store {
		c.draw(ctx)
	}
}
