


if(other.sprite_index == imgTradegood){
	coins ++;
	
	if(coins >= coinsMax){
		pc.coins = 0;
		pc.coinsMax = floor(pc.coinsMax * 1.2);
		instance_create_depth(0, 0, ww.layerScreen, objScreenTech);
	}
}


if(other.sprite_index == imgActionCard){
	var r = irandom_range(1, 20);
	var t = "Morale Boost";
	if(r >= 6 && r <= 10){ 
		t = "Direct Hit"; 
		dHit += 60 * 30;
	}
	if(r >= 11 && r <= 15){ 
		t = "Shields Holding"; 
		sHolding += 60 * 30;
	}
	
	if(r == 20){ 
		t = "Ghost Ship";
		pc.twin += 1;
	}
	
	if(t == "Morale Boost"){
		mBoost += 60 * 45;
	}
	
	var s = instance_create_depth(x, y, ww.layerEffect, objEffect);
	s.txt = t;
}

instance_destroy(other);