if(instance_number(objScreen) > 0){ return; }

x += xs;
y += ys;

timeCD --;

if(timeCD < 1){
	instance_destroy();
}


