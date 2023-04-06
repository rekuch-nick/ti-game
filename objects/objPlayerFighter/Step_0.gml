if(instance_number(objScreen) > 0){ return; }
image_alpha = .35;




thinkCD --;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	

	xt = irandom_range(130, room_width - 130);
	yt = irandom_range(30, room_height - 30);
	
	
	
	
	dis = point_distance(x, y, xt, yt);
	var angle = arctan2(yt - y, xt - x);
	xs = cos(angle) * moveSpeed;
	ys = sin(angle) * moveSpeed;
	
}



if(object_index == objPlayerStation){
	x = pc.x;
	y = pc.y + 70;
	
	
	m = getCloseMob(x, y);
	if(m != noone){
		if(irandom_range(1, 10) == 1){ 
			var d = 1;
			if(m.hp >= 100){ d ++; }
			m.hp -= d; 
		}
	}
	
	return;
}

moveObject(id, xs, ys);
if(y < 30){ y ++; }