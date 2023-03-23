function setStage(){
	random_set_seed(stage);
	
	mIndex = 0;
	
	rockRate = 0;
	mobCap = 4;
	
	if(stage == 1){ mobCap = 1; mobs = [objMob, objMobDestroyerIntro]; }
	if(stage == 2){ mobs = [objMob, objMob, objMob, objMob, objMobDestroyerIntro]; }
	if(stage == 3){ mobs = [objMobDestroyer, objMob, objMob, objMob, objMobDestroyerIntro]; }
	if(stage == 4){ mobs = [objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMobDestroyer, objMobDestroyer, objMobDestroyer]; }
	if(stage == 5){ rockRate = 110; mobs = [objMobDestroyer, objMobDestroyer, objMobDestroyer, objMob, objMob, objMob, objMob, objMob, objMob, objMob, objMobCruiser]; }
	if(stage == 6){ mobs = [objMobDestroyer, objMobDestroyer, objMobDestroyer, objMobDestroyer, objMobCruiser]; }
	if(stage == 7){ mobs = [objMobCarrier, objMobCruiser]; }
	if(stage >= 8){ mobs = [objMobCruiser, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobFighter2, objMobDestroyer, objMobDestroyer, objMobDestroyer]; }
	
	
	
	
	
	
	randomize();
}