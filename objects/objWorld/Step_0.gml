if(instance_number(objScreen) > 0){ return; }



if(instance_number(objMob) < maxMobs && mobTotal > 0){
	spawnCD --;
	if(spawnCD < 1){
		spawnCD = spawnCDMax;
		var t = mobKind;
		if(mobSpec != noone && mobTotal == mobTotalMax){ t = mobSpec; }
		if(mobLast != noone && mobTotal == 1){ t = mobLast; }
		instance_create_depth(irandom_range(130, room_width - 130), 0, ww.layerMob, t);
		mobTotal --;
	}
}


if(instance_number(objMob) == 0 && mobTotal < 1){
	spawnCD = 30;
	stage ++;
	
	maxMobs = 4;
	spawnCDMax = 60 * 2;
	mobKind = objMob;
	mobSpec = objMobDestroyer;
	mobLast = noone;
	mobTotal = 10;
	mobTotalMax = 10;
}



actionCardCD --;
if(playerHasTech(getTech("Neural Motivator").num)){ actionCardCD -= .5; }
if(actionCardCD < 1){
	actionCardCD = actionCardCDMax;
	var s = instance_create_depth(irandom_range(200, room_width - 200), 0, ww.layerMob + 100, objPup);
	s.sprite_index = imgActionCard;
}




