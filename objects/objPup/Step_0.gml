if(instance_number(objScreen) > 0){ return; }

y ++;




if(sprite_index == imgActionCard || sprite_index == imgSpaceExplore){
	image_angle += dir;
	if(irandom_range(0, 99) == 1){ dir *= -1; }
}


if(sprite_index == imgTradegood){
	if(playerHasTech(getTech("Maneuvering Jets").num)){ 
		if(x > pc.x){ x --; }
		if(x < pc.x){ x ++; }
		if(y > pc.y){ y --; }
		if(y < pc.y){ y ++; }
	} else if (irandom_range(1, 25) == 1){
		x += choose(-1, 1);
		y += choose(-1, 1);
	}
}


if(y > room_height + sprite_height){
	instance_destroy();
}
