


if(other.sprite_index == imgTradegood){
	coins ++;
	
	if(coins >= coinsMax){
		pc.coins = 0;
		pc.coinsMax = floor(pc.coinsMax * 1.2);
		instance_create_depth(0, 0, ww.layerScreen, objScreenTech);
	}
}

instance_destroy(other);