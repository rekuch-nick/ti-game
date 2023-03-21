getPlayerInput();
if(instance_number(objScreen) > 0){ return; }






xs = 0; ys = 0;
ms = moveSpeed;
if(playerHasTech(getTech("Gravity Drive").num)){ ms += 2; }

var angle = arctan2(mouse_y - y, mouse_x - x);
xs = cos(angle) * ms;
ys = sin(angle) * ms;

if(x < mouse_x){ image_xscale = 1; }
if(x > mouse_x){ image_xscale = -1; }

if(point_distance(x, y, mouse_x, mouse_y) >= ms){
	moveObject(id, xs, ys);
}

shotCD --;
if(shotCD < 1){
	shotCD = shotCDMax;
	instance_create_depth(x, y-25, ww.layerEffect + 1, objPlayerShot);
}


if(sp < spMax){
	sp = clamp(sp + .02, 0, spMax);
}


aniCD --;
if(aniCD < 1){ 
	aniCD = 15;
	image_angle = choose(-10, 0, 10);
}