if(instance_number(objScreen) > 0){ return; }



if(instance_number(objMob) < maxMobs && mobTotal > 0){
	spawnCD --;
	if(spawnCD < 1){
		spawnCD = spawnCDMax;
		var t = mobKind;
		if(mobSpec != noone && mobTotal == mobTotalMax){ t = mobSpec; }
		if(mobLast != noone && mobTotal == 1){ t = mobLast; }
		instance_create_depth(irandom_range(200, room_width - 200), 0, ww.layerMob, t);
		mobTotal --;
	}
}



actionCardCD --;
if(playerHasTech(getTech("Neural Motivator").num)){ actionCardCD -= .5; }
if(actionCardCD < 1){
	actionCardCD = actionCardCDMax;
	var s = instance_create_depth(irandom_range(200, room_width - 200), 0, ww.layerMob + 100, objPup);
	s.sprite_index = imgActionCard;
}



//// NEXT LEVEL ??????
if(instance_number(objMob) == 0 && mobTotal < 1){
	var oldSS = scrollSpeed;
	do { scrollSpeed = irandom_range(1, 10); } until ( abs(scrollSpeed - oldSS) >= 2);
	spawnCD = 30;
	stage ++;
	
	maxMobs = 4;
	spawnCDMax = 60 * 2;
	mobKind = objMob;
	mobSpec = objMobDestroyer;
	mobLast = noone;
	mobTotal = 10;
	mobTotalMax = 10;
	
	if(stage == 3){
		maxMobs = 2;
		spawnCDMax = 60 * 2;
		mobKind = objMobDestroyer;
		mobSpec = noone;
		mobLast = noone;
		mobTotal = 5;
		mobTotalMax = 5;
	}
	
	if(stage == 4){
		maxMobs = 6;
		spawnCDMax = 60 * 2;
		mobKind = objMobFighter2;
		mobSpec = noone;
		mobLast = noone;
		mobTotal = 10;
		mobTotalMax = 10;
	}
	
	if(stage == 5){
		maxMobs = 10;
		spawnCDMax = 60 * 2;
		mobKind = objMob;
		mobSpec = objMobCruiser;
		mobLast = objMobCruiser;
		mobTotal = 10;
		mobTotalMax = 10;
	}
}








