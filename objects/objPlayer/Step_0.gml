getPlayerInput();
if(instance_number(objScreen) > 0){ return; }

if(hp < 1){
	gameOverTime = 60 * 5;
	hp = hpMax;
	image_alpha = 0;
}

if(gameOverTime > 0){
	effect_create_above(ef_explosion, irandom_range(0, 1100), irandom_range(0, 700), choose(1, 2, 3), choose(c_orange, c_red, c_maroon, c_black) );
	effect_create_above(ef_explosion, irandom_range(0, 1100), irandom_range(0, 700), choose(1, 2, 3), choose(c_orange, c_red, c_maroon, c_black) );
	gameOverTime --;
	if(gameOverTime <= 0){
		gameOverTime = 0;
		image_alpha = 1;
		sp = spMax;
		instance_create_depth(0, 0, ww.layerScreen, objScreenGameOver);
	}
	return;
}

if(keyboard_check_pressed(vk_backspace)){ 
	coins = coinsMax;
	instance_create_depth(x, y, depth, objPup);
}

if(keyboard_check_pressed(vk_f1)){ 
	var s = instance_create_depth(x, y, depth, objPup);
	s.sprite_index = imgActionCard;
}




xs = 0; ys = 0;
ms = moveSpeed;
if(playerHasTech(getTech("Gravity Drive").num)){ ms += 2; }
if(playerHasTech(getTech("Fleet Logistics").num)){ ms += 2; }

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
if(playerHasTech(getTech("Hyper Metabolism").num)){ shotCD -= .5; }
if(shotCD < 1){
	shotCD = shotCDMax;
	instance_create_depth(x, y-25, ww.layerEffect + 1, objPlayerShot);
	
	
	if(playerHasTech(getTech("X-89 Bacterial Weapon").num)){ 
		var s = instance_create_depth(x, y-25, ww.layerEffect + 1, objPlayerShot);
		s.ys += 2; s.xs -= 2;
		var s = instance_create_depth(x, y-25, ww.layerEffect + 1, objPlayerShot);
		s.ys += 2; s.xs += 2;
	}
	
	
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

if(playerHasTech(getTech("Self Assembly Routines").num)){ 
	hp = clamp(hp + .01, 0, hpMax);
}


if(sHolding > 0){ sHolding --; }
if(mBoost > 0){ mBoost --; }
if(dHit > 0){ dHit --; }
if(frags >= 3){ fragTime ++; }
if(fragTime > 60 * 40){ fragTime = 0; frags = 0; }
if(twin > 4){ twin = 4; }



aniCD --;
if(aniCD < 1){ 
	aniCD = 15;
	image_angle = choose(-10, 0, 10);
}