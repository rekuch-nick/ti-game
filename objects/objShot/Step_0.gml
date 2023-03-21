if(instance_number(objScreen) > 0){ return; }




aniCD --;
if(aniCD < 1){
	var lastNum = num;
	aniCD = 15;
	num = 10 - floor((point_distance(x, y, pc.x, pc.y) / 800) * 10);
	num = clamp(num, 1, 10);
	
	
	
	if(num == lastNum){ num = clamp(num - 1, 1, 10); }
	
	if(num == 10){ num = 0; }
}



image_angle ++;

x += xs;
y += ys;

if(y >= room_height + sprite_height){ instance_destroy(); }