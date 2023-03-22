if(instance_number(objScreen) > 0){ return; }

y += ys;
x += xs;


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
		hasHitFighter = true;
		
	} else {
	
		instance_destroy();
	}
}