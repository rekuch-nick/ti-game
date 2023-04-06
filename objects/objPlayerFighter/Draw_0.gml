draw_self();

if(m != noone){
	for(var i=0; i<4; i++){
		var c1 = choose(c_red, c_maroon, c_black);
		var c2 = choose(c_red, c_maroon, c_black);
		draw_line_color(x+irandom_range(-3, 3), y+irandom_range(-3, 3), m.x+irandom_range(-3, 3), m.y+irandom_range(-3, 3), c1, c2);
	}
	m = noone;
}