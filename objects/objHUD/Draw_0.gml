draw_self();

draw_text_transformed(10, 10, "Wave #", 2, 2, 0);
draw_text_transformed(10, 40, string(ww.stage), 2, 2, 0);

var y1 = 490 + 200 - ((pc.hp / pc.hpMax) * 200);
draw_rectangle_color(30, y1, 100, 690, c_maroon, c_maroon, c_red, c_red, false);

var y2 = 490 + 200 - ((pc.sp / pc.spMax) * 200);
draw_set_alpha(.5);
draw_rectangle_color(10, y2, 120, 690, c_blue, c_blue, c_aqua, c_aqua, false);
draw_set_alpha(1);


//draw_text_transformed(970, 10, "$" + string(pc.coins), 2, 2, 0);
draw_sprite_stretched(imgTradegood, 0, 980, 10, 100, 100);

draw_rectangle_color(980, 30, 1090, 40, c_black, c_black, c_black, c_black, false);
var x1 = 980 + (pc.coins / pc.coinsMax) * 110;
draw_rectangle_color(980, 30, x1, 40, c_orange, c_yellow, c_yellow, c_orange, false);