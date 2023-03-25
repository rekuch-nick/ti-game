baseP = 2;
pow = 2;

if(playerHasTech(getTech("Plasma Scoring").num)){ pow += 1; }
if(playerHasTech(getTech("Hylar V Assault Laser").num)){ pow += 1; }
if(playerHasTech(getTech("Assault Cannon").num)){ pow += 1; }


if(pc.dHit > 0){ pow += baseP; }

moveSpeed = 12;
ys = -12;
xs = 0;
range = 400;
if(playerHasTech(getTech("Deep Space Cannon").num)){ range += 800; }

hasHitFighter = false;