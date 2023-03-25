function getCloseMob(a, b){
	var bestDis = 1000000;
	var best = noone;
	with(objMob){
		var d = point_distance(a, b, x, y);
		if(d < bestDis){
			bestDis = d;
			best = id;
		}
	}
	
	return best;
}