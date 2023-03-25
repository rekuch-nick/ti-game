for(var i=0; i<4; i++){
	var c1 = choose(c_yellow, c_orange, c_blue);
	var c2 = choose(c_yellow, c_orange, c_blue);
	draw_line_color(x+irandom_range(-3, 3), y+irandom_range(-3, 3), a+irandom_range(-3, 3), b+irandom_range(-3, 3), c1, c2);
}