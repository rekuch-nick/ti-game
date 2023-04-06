

if(hone){
	var c1 = choose(c_yellow, c_orange, c_blue);
	var c2 = choose(c_yellow, c_orange, c_blue);
	draw_circle_color(x, y, 6, c1, c2, false);
	return;
}




//var c1 = choose(c_red, c_aqua, c_yellow);
var c1 = choose(c_white, c_aqua, c_blue);
var c2 = choose(c_white, c_aqua, c_blue);

if(neuro != 0){
	c1 = choose(c_green, c_lime, c_blue);
	c2 = choose(c_green, c_lime, c_blue);
}

var rad = 4;
if(pc.dHit > 0){ rad = 6; }
draw_circle_color(x, y, rad, c1, c2, false);

var dhm = pc.dHit > 0 ? baseP : 0;
if(pow > baseP+dhm){ draw_circle_color(x, y, rad + 3, c1, c2, true); }
if(pow > baseP+dhm+1){ draw_circle_color(x, y, rad + 5, c1, c2, true); }
if(pow > baseP+dhm+2){ draw_circle_color(x, y, rad + 7, c1, c2, true); }
if(pow > baseP+dhm+3){ draw_circle_color(x, y, rad + 9, c1, c2, true); }


