image_alpha = random_range(.2, .5);
image_alpha = .35;




thinkCD --;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	

	xt = irandom_range(130, room_width - 130);
	yt = irandom_range(30, room_height - 30);

	
	
	dis = point_distance(x, y, xt, yt)
	var angle = arctan2(yt - y, xt - x);
	xs = cos(angle) * moveSpeed;
	ys = sin(angle) * moveSpeed;
	
}

moveObject(id, xs, ys);