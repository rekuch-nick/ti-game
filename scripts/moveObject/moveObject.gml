function moveObject(o, xs, ys){
	
	
	var dir = xs > 0 ? 1 : -1;
	for(var i=0; i<abs(xs); i++){
		o.x += dir;
		if(objectInBlock(o)){
			o.x -= dir;
			break;
		}
	}
	
	
	dir = ys > 0 ? 1 : -1;
	for(var i=0; i<abs(ys); i++){
		o.y += dir;
		if(objectInBlock(o)){
			o.y -= dir;
			break;
		}
	}
	
}