if(instance_number(objScreen) > 0){ return; }
if(point_distance(x, y, other.x, other.y) > 30){ return; }


for(var i=0; i<5; i++){
	effect_create_above(ef_explosion, other.x + irandom_range(-15, 15), other.y + irandom_range(-15, 15), random_range(.5, 1.2), choose(c_orange, c_red, c_maroon));
}

instance_destroy(other);
instance_destroy();