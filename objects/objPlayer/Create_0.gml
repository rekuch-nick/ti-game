getPlayerInput();
depth = -4999;

moveSpeed = 6;
aniCD = 45;
boxIn = false;
boxInSize = 100;

hp = 200;
hpMax = 200;
sp = 100;
spMax = 100;

coins = 0;
coinsMax = 16;

techRed = 0;
techBlue = 0;
techGreen = 0;
techYellow = 0;

shotCD = 20;
shotCDMax = 20;

neuroTime = 60 * 10;
neuroTimeMax = 60 * 10;
lightwaveCD = 0;

honeShotCD = 70;
honeShotCDMax = 70;

sideBuffer = 0;
frags = 0;
fragTime = 0;

mBoost = 0;
sHolding = 0;
dHit = 0;
flankSpeed = 0;
exBattleStation = 0;

twin = 0;
leftShotNext = true;

gameOverTime = 0;

for(var i=0; i<100; i++){
	tech[i] = false;
}