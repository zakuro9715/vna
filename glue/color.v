module glue

import zakuro9715.vna
import gx

[inline]
fn convert_color<F, T>(c F) T {
	return T{c.r, c.g, c.b, c.a}
}

[inline]
pub fn color_vna_to_gx(c vna.Color) gx.Color {
	return convert_color<vna.Color, gx.Color>(c)
}

[inline]
pub fn color_gx_to_vna(c gx.Color) vna.Color {
	return convert_color<gx.Color, vna.Color>(c)
}
