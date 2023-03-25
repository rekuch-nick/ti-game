

var x1 = x - abs(sprite_width) / 2;
var y1 = y - sprite_height / 2;
var x2 = x1 + (abs(sprite_width) * (hp / hpMax));
var y2 = y1 + 10;
draw_rectangle_color(x1, y1, x2, y2, c_maroon, c_maroon, c_maroon, c_maroon, false);


draw_self();