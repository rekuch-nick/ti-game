if(instance_number(objScreen) > 0){ return; }




x += xs;
y += ys;
if(y > room_height + 100){ instance_destroy(); }



var bumpTime = 0;
while(collision_circle(x, y, sprite_height/3, objPlayer, true, true)){
	
	if(playerHasTech(getTech("Antimass Deflectors").num)){ 
		hp = 0;
		break;
	}
	
	var xd = abs(xs - pc.xs);
	var yd = abs(ys - pc.ys);
	//if( (xd >= yd && getDirection(xs) != getDirection(pc.xs)) ||
	//	(yd >= xd && getDirection(ys) != getDirection(pc.ys)) ){
	//	moveObject(pc, xs, ys);
	//}
	if(pc.x > x){ moveObject(pc, 1, 0); }
	if(pc.x < x){ moveObject(pc, -1, 0); }
	if(pc.y > y){ moveObject(pc, 0, 1); }
	if(pc.y < y){ moveObject(pc, 0, -1); }
	
	bumpTime ++
	if(bumpTime > 10){ hp --; break; }
}

if(hp < 1){
	effect_create_above(ef_explosion, x, y, image_xscale * 2, c_grey);
	instance_destroy();
}