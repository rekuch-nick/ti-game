if(instance_number(objScreen) > 0){ return; }

y -= 12;


if(y < -10){ instance_destroy(); }






var hit = collision_circle(x, y, 5, objMob, true, true);
if(hit != noone){
	effect_create_above(ef_firework, x, y, .5, c_white);
	hit.hp -= pow;
	instance_destroy();
}