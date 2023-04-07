draw_self();
if(pc.gameOverTime > 0){ return; }

draw_text_transformed(10, 10, "Wave #", 2, 2, 0);
draw_text_transformed(10, 40, string(ww.stage), 2, 2, 0);




draw_rectangle_color(20, 490, 55, 690, c_black, c_black, c_black, c_black, false);
draw_rectangle_color(75, 490, 110, 690, c_black, c_black, c_black, c_black, false);

var y1 = 490 + 200 - ((pc.hp / pc.hpMax) * 200);
draw_rectangle_color(20, y1, 55, 690, c_maroon, c_maroon, c_red, c_red, false);
draw_text_color(20, y1, floor(pc.hp), c_red, c_red, c_red, c_red, 1);


var y2 = 490 + 200 - ((pc.sp / pc.spMax) * 200);
draw_set_alpha(.5);
draw_rectangle_color(75, y2, 110, 690, c_blue, c_blue, c_aqua, c_aqua, false);
draw_set_alpha(1);
draw_text_color(75, y2, floor(pc.sp), c_aqua, c_aqua, c_aqua, c_aqua, 1);




/*
draw_rectangle_color(10, 490, 120, 690, c_black, c_black, c_black, c_black, false);

var y1 = 490 + 200 - ((pc.hp / pc.hpMax) * 200);
draw_rectangle_color(30, y1, 100, 690, c_maroon, c_maroon, c_red, c_red, false);

draw_text_color(92, y1, floor(pc.hp), c_red, c_red, c_red, c_red, 1);


var y2 = 490 + 200 - ((pc.sp / pc.spMax) * 200);
draw_set_alpha(.5);
draw_rectangle_color(10, y2, 120, 690, c_blue, c_blue, c_aqua, c_aqua, false);
draw_set_alpha(1);


draw_text_color(10, y2, floor(pc.sp), c_aqua, c_aqua, c_aqua, c_aqua, 1);
*/

//draw_text_transformed(970, 10, "$" + string(pc.coins), 2, 2, 0);
draw_sprite_stretched(imgTradegood, 0, 980, 10, 100, 100);

draw_rectangle_color(980, 30, 1090, 40, c_black, c_black, c_black, c_black, false);
var x1 = 980 + (pc.coins / pc.coinsMax) * 110;
draw_rectangle_color(980, 30, x1, 40, c_orange, c_yellow, c_yellow, c_orange, false);


for(var i=0; i<3; i++){
	var f = pc.frags > i ? 0 : 1;
	var c = c_white;
	if(pc.frags >= 3){ c = choose(c_red, c_aqua, c_lime); }
	draw_sprite_stretched_ext(imgRelicFrag, f, 977 + i*40, 110, 36, 36, c, 1);
}



draw_sprite_stretched(imgTechGreen, 0, 980, 210, 40, 40);
draw_sprite_stretched(imgTechBlue, 0, 980, 310, 40, 40);
draw_sprite_stretched(imgTechYellow, 0, 980, 410, 40, 40);
draw_sprite_stretched(imgTechRed, 0, 980, 510, 40, 40);

draw_text_transformed(1030, 210, pc.techGreen, 2, 2, 0);	
	draw_text_transformed(1030, 310, pc.techBlue, 2, 2, 0);
	draw_text_transformed(1030, 410, pc.techYellow, 2, 2, 0);
	draw_text_transformed(1030, 510, pc.techRed, 2, 2, 0);
	
if(playerHasTech(getTech("Inheritance Systems").num)){
	draw_text_transformed(1030, 210, "L", 2, 2, 0);	
	draw_text_transformed(1030, 310, "1", 2, 2, 0);
	draw_text_transformed(1030, 410, "Z", 2, 2, 0);
	draw_text_transformed(1030, 510, "1", 2, 2, 0);
	
	draw_text_transformed(1030, 210, "#", 2, 2, 0);	
	draw_text_transformed(1030, 310, "$", 2, 2, 0);
	draw_text_transformed(1030, 410, "%", 2, 2, 0);
	draw_text_transformed(1030, 510, "^", 2, 2, 0);
}


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
if(pc.flankSpeed > 0){
	draw_text(0, b, "Flank Speed");
	draw_text(10, b+15, floor(pc.flankSpeed / 60));
	b += modd;
}
if(pc.silenceOfSpace > 0){
	draw_text(0, b, "In the Silence of Space");
	draw_text(10, b+15, floor(pc.silenceOfSpace / 60));
	b += modd;
}
if(pc.exBattleStation > 0){
	draw_text(0, b, "Experimental Battle Station");
	draw_text(10, b+15, floor(pc.exBattleStation / 60));
	b += modd;
}



