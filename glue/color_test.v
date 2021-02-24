module glue

import zakuro9715.vna
import gx

fn test_color() {
	vna_color := vna.Color{1, 2, 3, 4}
	gx_color := gx.Color{1, 2, 3, 4}
	assert color_vna_to_gx(vna_color) == gx_color
	assert color_gx_to_vna(gx_color) == vna_color
}
