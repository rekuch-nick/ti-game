image_alpha = 0;
selected = noone;






red = 0;
blue = 0;
green = 0;
yellow = 0;
	
for(var i=0; i<100; i++){
	var t = getTech(i);
	if(t != noone && playerHasTech(i)){
		if(t.col == ww.tRed){ red ++; }
		if(t.col == ww.tBlue){ blue ++; }
		if(t.col == ww.tGreen){ green ++; }
		if(t.col == ww.tYellow){ yellow ++; }
	}
}
