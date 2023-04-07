randomize();


layerMob = -5000;
layerEffect = -7000;
layerScreen = -8000;

instance_create_depth(0, 0, -1, objHUD);
instance_create_depth(0, 0, layerScreen, objScreenTitle);



spawnCD = 30;
spawnCDMax = 60;

stage = 1;


setStage();


bg1.sprite_index = imgTile23;
bg2.sprite_index = imgTile24;




actionCardCDMax = 60 * 60 * 2;
actionCardCD = actionCardCDMax;

frontTokenCDMax = 60 * 150;
frontTokenCD = 20;

shardCDMax = 60 * 70;
shardCD = shardCDMax * 2;




tRed = 0;
tBlue = 1;
tGreen = 2;
tYellow = 3;


scrollSpeed = 2;


stageText = getStageText(stage);




