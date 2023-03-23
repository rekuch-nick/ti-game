

//var c1 = choose(c_red, c_aqua, c_yellow);
var c1 = choose(c_white, c_aqua, c_blue);
var c2 = choose(c_white, c_aqua, c_blue);

var rad = 4;
if(pc.dHit > 0){ rad = 6; }
draw_circle_color(x, y, rad, c1, c2, false);

if(pow > 1){ draw_circle_color(x, y, rad + 3, c1, c2, true); }
if(pow > 2){ draw_circle_color(x, y, rad + 5, c1, c2, true); }
if(pow > 3){ draw_circle_color(x, y, rad + 7, c1, c2, true); }
if(pow > 4){ draw_circle_color(x, y, rad + 9, c1, c2, true); }


