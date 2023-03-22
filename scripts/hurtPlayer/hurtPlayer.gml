function hurtPlayer(dmg, note){
	
	
	if(pc.twin > 0 && choose(true, false)){
		pc.twin --;
		dmg = 0;
	}
	
	while(dmg > 0 && pc.sp > 0){
		sp --;
		dmg --;
	}
	
	
	pc.hp -= dmg;
	
}