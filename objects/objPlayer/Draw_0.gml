if(frags >= 3){
	var c = choose(c_white, c_aqua, c_lime, c_yellow);
	draw_circle_color(x, y, irandom_range(20, 50), c, c, false);
}
draw_self();


for(var i=0; i<twin; i++){
	var dirMod = i % 2 == 0 ? 1 : -1;
	var disMod = ceil((i+1) / 2) * 40;
	var a = x + (disMod * dirMod);
	var b = y;
	draw_sprite_ext(sprite_index, image_index, a, b, image_xscale, image_yscale, image_angle, c_white, .5);
}