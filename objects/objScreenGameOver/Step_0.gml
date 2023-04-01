





if(pc.clickLeft){
	var cp = collision_point(mouse_x, mouse_y, objButton, true, true);
	if(cp != noone){
		
		if(cp.txt == r1){
			// ww.stage = clamp(ww.stage - 1, 1, ww.stage);
		}
		if(cp.txt == r2){
			ww.stage = clamp(ww.stage - 3, 1, ww.stage);
		}
		
		with(objMob){ instance_destroy(); }
		with(objPlayerFighter){ instance_destroy(); }
		with(objShot){ instance_destroy(); }
		with(objPlayerShot){ instance_destroy(); }
		with(objRock){ instance_destroy(); }
		
		setStage();
		
		clearPlayerInput();
	
		instance_destroy();
		instance_destroy(b1);
		instance_destroy(b2);
	}
}