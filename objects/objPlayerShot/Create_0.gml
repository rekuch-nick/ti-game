pow = 1;

if(playerHasTech(getTech("Plasma Scoring").num)){
	pow += 1;
}

if(pc.dHit > 0){ pow *= 2; }

moveSpeed = 12;
ys = -12;
xs = 0;

hasHitFighter = false;