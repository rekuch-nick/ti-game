function hurtPlayer(dmg, note){
	
	while(dmg > 0 && pc.sp > 0){
		sp --;
		dmg --;
	}
	
	
	pc.hp -= dmg;
	
}