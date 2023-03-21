if(instance_number(objScreen) > 0){ return; }


thinkCD --;
if(thinkCD < 1){
	thinkCD = thinkCDMax;
	
	if(moveType == "random"){
		xt = irandom_range(130, room_width - 130);
		yt = irandom_range(30, room_height - 30);
	}
	
	if(moveType == "random mid"){
		xt = irandom_range(130, room_width - 130);
		yt = irandom_range(30, (room_height / 3) * 2);
	}
	
	dis = point_distance(x, y, xt, yt)
	var angle = arctan2(yt - y, xt - x);
	xs = cos(angle) * moveSpeed;
	ys = sin(angle) * moveSpeed;
	
}



if(point_distance(x, y, xt, yt) >= moveSpeed){
	if(xt > x){ image_xscale = 1; }
	if(xt < x){ image_xscale = -1; }
	
	moveObject(id, xs, ys);
	
	if(disThink){
		dis -= moveSpeed;
		if(dis < 1){ thinkCD = 0; }
	}
}

if(stillNew){
	y ++;
	if(y > 30){ stillNew = false; }
}


if(hp < 1){
	var n = irandom_range(coinMin, coinMax);
	if(irandom_range(0, 99) < coinZero){ n = 0; }
	if(n > 0 && playerHasTech(getTech("Sarween Tools").num)){ n ++; }
	for(var i=0; i<n; i++){
		var a = x + irandom_range(-sprite_width/2, sprite_width/2);
		var b = y + irandom_range(-sprite_height/2, sprite_height/2);
		instance_create_depth(a, b, ww.layerMob + 100, objPup);
	}
	
	
	for(var i=0; i<explodeNum; i++){
		effect_create_above(ef_explosion, other.x + irandom_range(-15, 15), other.y + irandom_range(-15, 15), random_range(.5, explodeSize), choose(c_orange, c_red, c_maroon));
	}
	instance_destroy();
	return;
}








if(shotType != noone){
	shotCD --;
	if(shotCD < 1){
		shotCD = shotCDMax;
		instance_create_depth(x, y, ww.layerEffect, shotType);
		
		if(shotCluster > 0){
			shotCluster --;
			shotCD = shotCDCluster;
		} else {
			shotCluster = shotClusterMax;
		}
	}
}









