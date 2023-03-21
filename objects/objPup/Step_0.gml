if(instance_number(objScreen) > 0){ return; }

y ++;


if(sprite_index == imgActionCard){
	image_angle += dir;
	if(irandom_range(0, 99) == 1){ dir *= -1; }
}


if(y > room_height + sprite_height){
	instance_destroy();
}
