

if(image_alpha < 1){
	image_alpha += .015;
	
	if(image_alpha >= 1){
		
		prevRoll[0] = -1;
		prevRoll[1] = -1;
		prevRoll[2] = -1;
		prevRoll[3] = -1;
		
		for(var i=0; i<4; i++){
			
			do {
				var r = irandom_range(0, 50);
				var ok = true;
				
				for(var j=0; j<i; j++){
					if(r == prevRoll[j]){ ok = false; continue; }
				}
				
				var tec = getTech(r);
				
				if(tec == noone){ ok = false; continue; }
				if(playerHasTech(tec.num)){ ok = false; continue; }
				if(tec.col == ww.tRed && tec.req > red){ ok = false; continue; }
				if(tec.col == ww.tBlue && tec.req > blue){ ok = false; continue; }
				if(tec.col == ww.tGreen && tec.req > green){ ok = false; continue; }
				if(tec.col == ww.tYellow && tec.req > yellow){ ok = false; continue; }
				
				
			} until (ok);
			
			
			
			prevRoll[i] = r;
			var s = instance_create_depth(100, 100 + i * 132, depth - 1, objTechChoice);
			s.nam = tec.nam;
			s.desc = tec.desc;
			if(tec.col == ww.tRed){ s.col = imgTechRed; }
			if(tec.col == ww.tBlue){ s.col = imgTechBlue; }
			if(tec.col == ww.tGreen){ s.col = imgTechGreen; }
			if(tec.col == ww.tYellow){ s.col = imgTechYellow; }
			s.tech = tec;
		}
	}
	
	return;
}


selected = collision_point(mouse_x, mouse_y, objTechChoice, true, false);

if(selected != noone){

	if(pc.clickLeft){
		pc.tech[selected.tech.num] = true;
		
		with(objTechChoice){ instance_destroy(); }
		clearPlayerInput();
		instance_destroy();
	}
	
}