


if(other.sprite_index == imgTradegood){
	coins ++;
	if(playerHasTech(getTech("Mirror Computing").num)){ coins ++; }
	
	if(coins >= coinsMax){
		pc.coins = 0;
		pc.coinsMax += 7;
		instance_create_depth(0, 0, ww.layerScreen, objScreenTech);
	}
}


if(other.sprite_index == imgActionCard){
	var r = irandom_range(1, 20);
	var durMod = 1;
	if(playerHasTech(getTech("Bio Stims").num)){ durMod = 2; }
	var t = "Morale Boost";
	if(r >= 6 && r <= 10){ 
		t = "Direct Hit"; 
		dHit += 60 * 30 * durMod;
	}
	if(r >= 11 && r <= 15){ 
		t = "Shields Holding"; 
		sHolding += 60 * 30 * durMod;
	}
	
	if(r == 20){ 
		t = "Ghost Ship";
		pc.twin += 1;
	}
	
	if(t == "Morale Boost"){
		mBoost += 60 * 45 * durMod;
	}
	
	var s = instance_create_depth(x, y, ww.layerEffect, objEffect);
	s.txt = t;
}



if(other.sprite_index == imgSpaceExplore){
	var t = "DET Explore";
	
	var r = irandom_range(1, 2);
	
	if(r == 1){
		t = "Unknown Relic Fragment";
		pc.frags ++;
	}
	
	if(r == 2){
		t = "Lost Crew";
		var s = instance_create_depth(irandom_range(200, 500), 0, ww.layerMob + 100, objPup);
		s.sprite_index = imgActionCard;
		s = instance_create_depth(irandom_range(600, 900), 0, ww.layerMob + 100, objPup);
		s.sprite_index = imgActionCard;
	}
	
	var s = instance_create_depth(x, y, ww.layerEffect, objEffect);
	s.txt = t;
}


if(other.sprite_index == imgRelicFrag){
	pc.frags ++; 
	
	var t = "Relic Fragment";
	
	var s = instance_create_depth(x, y, ww.layerEffect, objEffect);
	s.txt = t;
}



instance_destroy(other);