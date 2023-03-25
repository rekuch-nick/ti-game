function getRandomMob(){
	
	var index = 0;
	var list = [];
	with(objMob){
		if(sprite_index != imgFighter && sprite_index != imgFighter2){
			list[index] = id;
			index ++;
		}
	}
	
	if(index == 0){ return noone; }
	
	var i = irandom_range(0, index - 1);
	
	return list[i];
	
}