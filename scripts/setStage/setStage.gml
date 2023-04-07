function setStage(){
	random_set_seed(ww.stage);
	
	ww.mIndex = 0;
	
	ww.rockRate = 0;
	ww.mobCap = 4;
	
	if(ww.stage == 1){ ww.mobCap = 1; ww.mobs = [objMob, objMobDestroyerIntro]; }
	if(ww.stage == 2){ ww.mobs = [objMob, objMob, objMob, objMob, objMobDestroyerIntro]; }
	if(ww.stage == 3){ ww.mobs = [objMobDestroyer, objMob, objMob, objMob, objMobDestroyerIntro]; }
	if(ww.stage == 4){ ww.mobs = [objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMobDestroyer, objMobDestroyer, objMobDestroyer]; }
	if(ww.stage == 5){ ww.rockRate = 110; ww.mobs = [objMobDestroyer, objMobDestroyer, objMobDestroyer, objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMobCruiser]; }
	if(ww.stage == 6){ ww.mobs = [objMobDestroyer, objMobDestroyer, objMobDestroyer, objMobDestroyer, objMobCruiser, objMob, objMob, objMob, objMob, objMob, objMob, objMob,objMob]; }
	if(ww.stage == 7){ ww.mobs = [objMobCarrier, objMobCruiser]; }
	if(ww.stage == 8){ ww.rockRate = 110; ww.mobs = [objMobDestroyer, objMobDestroyer, objMobDestroyer, objMob, objMob, objMobCruiser2, objMob, objMob, objMob, objMobCruiser2, objMobCruiser, objMobDestroyerIntro, objMobDestroyerIntro]; }
	if(ww.stage == 9){ ww.rockRate = 180; ww.mobs = [objMobDestroyer, objMobDestroyer, objMob, objMob, objMobCruiser2, objMob, objMob, objMob, objMobCruiser, objMobCruiser2, objMobCruiser]; }
	if(ww.stage == 10){ ww.rockRate = 100; ww.mobs = [objMobCruiser2, objMobDestroyer, objMobDestroyer, objMob, objMob, objMobCruiser2, objMob, objMob, objMob, objMobCruiser, objMobCruiser2, objMobCruiser]; }
	if(ww.stage == 11){ ww.mobCap = 6; ww.mobs = [objMobDread, objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMob]; }
	if(ww.stage == 12){ ww.mobs = [objMobCruiser, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobDestroyer, objMobDestroyer, objMobDestroyer]; }
	if(ww.stage == 13){ ww.mobs = [objMobCruiser, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobDread, objMobDestroyer, objMobDestroyer]; }
	if(ww.stage == 14){ ww.mobCap = 2; ww.rockRate = 100; ww.mobs = [objMobCruiser2, objMobDread, objMobDread, objMobDread]; }
	if(ww.stage == 15){ ww.mobCap = 2; ww.rockRate = 100; ww.mobs = [objMobPds, objMob, objMob, objMob, objMobPds, objMob, objMob, objMobPds, objMob, objMob, objMob, objMob, objMobPds]; }
	if(ww.stage == 16){ ww.mobs = [objMobCruiser, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobDestroyer, objMobDestroyer, objMobDestroyer]; }
	if(ww.stage == 17){ ww.mobCap = 1; ww.mobs = [objMobDestroyerIntro, objMobFlagshipNecro]; }
	
	
	
	
	
	if(ww.stage >= 18){ 
		if(choose(true, false, false, false)){ ww.rockRate = irandom_range(80, 120); }
		if(choose(true, false, false)){ ww.mobCap ++; }
		if(choose(true, false, false)){ ww.mobCap ++; }
		
		var n = clamp(ww.stage, 10, 50);
		for(var i=0; i<n; i++){
			ww.mobs[i] = choose(
				objMob,objMob,objMob,objMob,
				objMobDestroyerIntro,
				objMobDestroyer,objMobDestroyer,objMobDestroyer,
				objMobCruiser,objMobCruiser,
				objMobFighter2,objMobFighter2,objMobFighter2,objMobFighter2,
				objMobCruiser2,objMobCruiser2,
				objMobCarrier,
				objMobDock,
				objMobDread,
				objMobPds
			);
		}
		
	}
	
	
	
	if(ww.stage == 25){ ww.mobCap = 1; ww.rockRate = 0; ww.mobs = [objMobDestroyerIntro, objMobFlagshipArgent]; }
	if(ww.stage == 31){ ww.mobCap = 1; ww.rockRate = 0; ww.mobs = [objMobCruiser2, objMobFlagshipHacan]; }
	
	
	
	
	
	
	randomize();
}