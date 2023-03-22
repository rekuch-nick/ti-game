getPlayerInput();
if(instance_number(objScreen) > 0){ return; }

if(keyboard_check(vk_backspace)){ 
	instance_create_depth(x, y, depth, objPup);
}

if(keyboard_check_pressed(vk_f1)){ 
	var s = instance_create_depth(x, y, depth, objPup);
	s.sprite_index = imgActionCard;
}




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
if(mBoost > 0){ shotCD -= 1; }
if(shotCD < 1){
	shotCD = shotCDMax;
	instance_create_depth(x, y-25, ww.layerEffect + 1, objPlayerShot);
	
	
	
	
	for(var i=0; i<twin; i++){
		var dirMod = i % 2 == 0 ? 1 : -1;
		var disMod = ceil((i+1) / 2) * 40;
		var a = x + (disMod * dirMod);
		var b = y-25;
		instance_create_depth(a, b, ww.layerEffect + 1, objPlayerShot);
	}
	
	
	
	if(playerHasTech(getTech("Automated Defense Turrets").num)){ 
		with(objMob){ if(sprite_index == imgFighter || sprite_index == imgFighter2){
			if(point_distance(x, y, pc.x, pc.y) < 300){
				var s = instance_create_depth(pc.x, pc.y-25, ww.layerEffect + 1, objPlayerShot);
				var angle = arctan2(y - pc.y, x - pc.x);
				s.xs = cos(angle) * s.moveSpeed;
				s.ys = sin(angle) * s.moveSpeed;
			}
		}}
	}
	
	
}


if(sp < spMax){
	sp = clamp(sp + .02, 0, spMax);
	if(sHolding > 0){
		sp = clamp(sp + .08, 0, spMax);
	}
}


if(sHolding > 0){ sHolding --; }
if(mBoost > 0){ mBoost --; }
if(dHit > 0){ dHit --; }




aniCD --;
if(aniCD < 1){ 
	aniCD = 15;
	image_angle = choose(-10, 0, 10);
}