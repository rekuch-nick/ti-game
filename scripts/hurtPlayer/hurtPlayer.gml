function hurtPlayer(dmg, note){
	
	
	if(pc.twin > 0 && choose(true, false)){
		pc.twin --;
		dmg = 0;
	}
	
	while(dmg > 0 && pc.sp > 0){
		sp --;
		dmg --;
	}
	
	
	if(dmg > 0){
		if(playerHasTech(getTech("Valkyrie Particle Weave").num)){ 
			var b = y - 60;
			for(var a=pc.x-200; a<=pc.x+200; a+= 25){
				if(a >= 130 && a <= 970){
					if(a < x){ b -= 5; }
					if(a > x){ b += 5; }
					
					var s = instance_create_depth(a, b, ww.layerEffect, objPlayerShot);
					s.pow = 5;
				}
			}
		}
		
		if(playerHasTech(getTech("E-Res Siphons").num)){ 
			s = instance_create_depth(x - 100, y - 100, ww.layerMob + 100, objPup);
			s = instance_create_depth(x - 100, y + 100, ww.layerMob + 100, objPup);
			s = instance_create_depth(x + 100, y - 100, ww.layerMob + 100, objPup);
			s = instance_create_depth(x + 100, y + 100, ww.layerMob + 100, objPup);
		}
		
	}
	
	
	
	pc.hp -= dmg;
	
}