draw_self();

draw_text_transformed(10, 10, "Wave #", 2, 2, 0);
draw_text_transformed(10, 40, string(ww.stage), 2, 2, 0);

draw_rectangle_color(10, 490, 120, 690, c_black, c_black, c_black, c_black, false);

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




draw_sprite_stretched(imgTechGreen, 0, 980, 210, 40, 40);
draw_text_transformed(1030, 210, pc.techGreen, 2, 2, 0);

draw_sprite_stretched(imgTechBlue, 0, 980, 310, 40, 40);
draw_text_transformed(1030, 310, pc.techBlue, 2, 2, 0);

draw_sprite_stretched(imgTechYellow, 0, 980, 410, 40, 40);
draw_text_transformed(1030, 410, pc.techYellow, 2, 2, 0);

draw_sprite_stretched(imgTechRed, 0, 980, 510, 40, 40);
draw_text_transformed(1030, 510, pc.techRed, 2, 2, 0);


var modd = 47;
var b = 200;
if(pc.mBoost > 0){
	draw_text(0, b, "Morale Boost");
	draw_text(10, b+15, floor(pc.mBoost / 60));
	b += modd;
}
if(pc.sHolding > 0){
	draw_text(0, b, "Shields Holding");
	draw_text(10, b+15, floor(pc.sHolding / 60));
	b += modd;
}
if(pc.dHit > 0){
	draw_text(0, b, "Direct Hit");
	draw_text(10, b+15, floor(pc.dHit / 60));
	b += modd;
}



