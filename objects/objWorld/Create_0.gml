randomize();


layerMob = -5000;
layerEffect = -7000;
layerScreen = -8000;

instance_create_depth(0, 0, -1, objHUD);
instance_create_depth(0, 0, layerScreen, objScreenTitle);




maxMobs = 1;
spawnCD = 30;
spawnCDMax = 60;
mobKind = objMob;
		//mobKind = objMobDestroyerIntro; //
mobSpec = noone;
		//mobSpec = objMobCruiser; //
mobLast = objMobDestroyerIntro;
mobTotal = 2;
mobTotalMax = 2;

stage = 1;

bg1.sprite_index = imgTile23;
bg2.sprite_index = imgTile24;




actionCardCDMax = 60 * 60 * 2;
actionCardCD = actionCardCDMax;






tRed = 0;
tBlue = 1;
tGreen = 2;
tYellow = 3;


scrollSpeed = 2;







