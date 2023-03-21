if(instance_number(objScreen) > 0){ return; }
y +=10;

if(y > 1000){ 
	x = irandom_range(250, 950);
	y = -300; 
	sprite_index = choose(
		imgTile19,
		imgTile20,
		imgTile21,
		imgTile22,
		imgTile23,
		imgTile24,
		imgTile25,
		imgTile26,
		imgTile27,
		imgTile28,
		imgTile29,
		imgTile30,
		imgTile31,
		imgTile32,
		imgTile33,
		imgTile34,
		imgTile35,
		imgTile36,
		imgTile37,
		imgTile38,
		imgTile39,
		imgTile40
	);
	
	image_angle = choose(0, 60, -60, 120, -120, 180);
}