if(point_distance(x, y, other.x, other.y) > 30){ return; }



if(playerHasTech(getTech("Light/Wave Deflector").num)){ 
	//if(irandom_range(0, 99) < 50){
	if(lightwaveCD < 1){
		lightwaveCD = 60 * 30;
		var s = instance_create_depth(x, y, depth, objEffect);
		s.xs = other.xs;
		s.ys = other.ys;
		s.timeCD = 60 * 10;
		s.sprite_index = imgShotLightwave;
		
		var s = instance_create_depth(x, y, ww.layerEffect, objEffect);
		s.txt = "Used Lightwave";
		
		instance_destroy(other);
		return;
	}
}


effect_create_above(ef_explosion, x, y, 1.5, c_orange);

hurtPlayer(other.pow, "");
instance_destroy(other);
