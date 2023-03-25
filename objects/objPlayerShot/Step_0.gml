if(instance_number(objScreen) > 0){ return; }

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

y += ys;
x += xs;
range -= abs(ys);

if(y < -10){ instance_destroy(); }






var hit = collision_circle(x, y, 5, objMob, true, true);
var hitFighter = false;
if(hit != noone){ 
	hitFighter = hit.sprite_index == imgFighter || hit.sprite_index == imgFighter2;
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
		
		var m = getRandomMob();
		if(m != noone){
			var s = instance_create_depth(x, y, depth, objEffectLine);
			s.a = m.x;
			s.b = m.y;
			m.hp -= pow;
		}
		
		instance_destroy();
	} else {
	
		instance_destroy();
	}
}



if(range < 0){ instance_destroy(); }