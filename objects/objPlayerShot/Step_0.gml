if(instance_number(objScreen) > 0){ return; }

if(firstFrame){
	
	if(neuro != 0){
		xs = neuro * 3;
		ys += 3;
		pow += 1;
	}
	firstFrame = false;
}


if(hone){
	honeCD --;
	if(honeCD < 1){
		honeCD = 45;
		
		
		var m = getCloseMob(x, y);
		if(m != noone){
			var angle = arctan2(m.y - y, m.x - x);
			xs = cos(angle) * 5;
			ys = sin(angle) * 5;
		}
	}
}

if(neuro != 0){
	xFlipCD --;
	if(xFlipCD < 1){
		xFlipCD = xFlipCDMax;
		xs *= -1;
	}
}


y += ys;
x += xs;
range -= abs(ys);

if(y < -10){ instance_destroy(); }






var hit = collision_circle(x, y, 5, objMob, true, true);
var hitFighter = false;
if(hit != noone){ 
	hitFighter = hit.isFighter;
}

if(hasHitFighter && hit != noone){
	if(hitFighter){
		hit = noone;
	}
}

if(hit != noone){
	effect_create_above(ef_firework, x, y, .5, c_white);
	hit.hp -= pow;
	
	if(hitFighter && playerHasTech(getTech("Graviton Laser System").num)){ 
		//hasHitFighter = true;
		
		/*
		var m = getRandomMob();
		if(m != noone){
			var s = instance_create_depth(x, y, depth, objEffectLine);
			s.a = m.x;
			s.b = m.y;
			m.hp -= pow;
		}
		*/
		if(!hone){
			var s = instance_create_depth(x, y-50, ww.layerEffect + 1, objPlayerShot); s.hone = true; s.pow *= 2; s.range = 1200;
			var s = instance_create_depth(x, y+50, ww.layerEffect + 1, objPlayerShot); s.hone = true; s.pow *= 2; s.range = 1200;
			var s = instance_create_depth(x-50, y, ww.layerEffect + 1, objPlayerShot); s.hone = true; s.pow *= 2; s.range = 1200;
			var s = instance_create_depth(x+50, y, ww.layerEffect + 1, objPlayerShot); s.hone = true; s.pow *= 2; s.range = 1200;
		}
		
		instance_destroy();
	} else {
	
		instance_destroy();
	}
}



if(range < 0){ instance_destroy(); }