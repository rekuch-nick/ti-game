if(instance_number(objScreen) > 0){ return; }



if(instance_number(objMob) < mobCap && mIndex < array_length(mobs)){
	spawnCD --;
	if(spawnCD < 1){
		spawnCD = spawnCDMax;
		
		instance_create_depth(irandom_range(200, room_width - 200), 0, ww.layerMob, mobs[mIndex]);
		mIndex ++;
	}
}


if(rockRate > 0 && irandom_range(1, rockRate) == 1){
	instance_create_depth(irandom_range(150, room_width - 150), 0, ww.layerMob + 10, objRock);
}


actionCardCD --;
if(playerHasTech(getTech("Neural Motivator").num)){ actionCardCD -= .5; }
if(playerHasTech(getTech("Mageon Implants").num)){ actionCardCD -= .5; }
if(actionCardCD < 1){
	actionCardCD = actionCardCDMax;
	var s = instance_create_depth(irandom_range(200, room_width - 200), 0, ww.layerMob + 100, objPup);
	s.sprite_index = imgActionCard;
}

shardCD --;
if(playerHasTech(getTech("Scanlink Drone Network").num)){ shardCD -= .5; }
if(shardCD < 1){
	shardCD = shardCDMax;
	var s = instance_create_depth(irandom_range(200, room_width - 200), 0, ww.layerMob + 100, objPup);
	s.sprite_index = imgRelicFrag;
}



if(playerHasTech(getTech("Dark Energy Tap").num)){ 
	frontTokenCD --;
	if(frontTokenCD < 1){
		frontTokenCD = frontTokenCDMax;
		var s = instance_create_depth(irandom_range(200, room_width - 200), 0, ww.layerMob + 100, objPup);
		s.sprite_index = imgSpaceExplore;
	}
}


//// NEXT LEVEL ??????
if(instance_number(objMob) == 0 && mIndex >= array_length(mobs) ){
	var oldSS = scrollSpeed;
	do { scrollSpeed = irandom_range(1, 10); } until ( abs(scrollSpeed - oldSS) >= 2);
	spawnCD = 30;
	stage ++;
	
	
	if(playerHasTech(getTech("Integrated Economy").num)){ pc.twin ++; }
	
	if(playerHasTech(getTech("Pre-Fab Arcologies").num)){ 
		for(var i=0; i<ceil(stage); i++){
			instance_create_depth(irandom_range(200, 900), 0, ww.layerMob + 100, objPup);
		}
	}
	
	if(playerHasTech(getTech("Transit Diodes").num)){ 
		instance_create_depth(pc.x, pc.y, depth, objPlayerFighter);
		instance_create_depth(pc.x, pc.y, depth, objPlayerFighter);
		instance_create_depth(pc.x, pc.y, depth, objPlayerFighter);
		instance_create_depth(pc.x, pc.y, depth, objPlayerFighter);
	}
	
	setStage();
	

}








