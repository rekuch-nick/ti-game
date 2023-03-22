function objectInBlock(o){
	if(o.x < 130+o.sideBuffer || o.y < 30 || o.x >= room_width-130-o.sideBuffer || o.y >= room_height-30){ return true; }
	
	
	
	//with(o){
	//	if(collision_circle(x, y, 20, objPlayer, true, true)){
	//		return true;
	//	}
	//}
	
	//with(o){
	//	if(collision_circle(x, y, 20, objMob, true, true)){
	//		return true;
	//	}
	//}
		
	

	return false;
}