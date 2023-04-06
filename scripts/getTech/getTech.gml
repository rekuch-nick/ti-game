function getTech(n){
	
	//////////////////////////////////////////////////////////////////////////////////////////////
	/////   GREEN   //////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////
	
	if(n == "Neural Motivator" || n == 0){
		return {
			nam: "Neural Motivator",
			col: ww.tGreen,
			req: 0,
			desc: "Draw more Action Cards",
			num: 0
		}
	}
	
	if(n == "Daxcive Animators" || n == 1){
		return {
			nam: "Daxcive Animators",
			col: ww.tGreen,
			req: 1,
			desc: "Defeated Fighters will serve you",
			num: 1
		}
	}
	
	if(n == "Hyper Metabolism" || n == 2){
		return {
			nam: "Hyper Metabolism",
			col: ww.tGreen,
			req: 3,
			desc: "Your main weapon fires more quickly",
			num: 2
		}
	}
	
	if(n == "X-89 Bacterial Weapon" || n == 3){
		return {
			nam: "X-89 Bacterial Weapon",
			col: ww.tGreen,
			req: 5,
			desc: "Works on ships too",
			num: 3
		}
	}
	
	if(n == "Pre-Fab Arcologies" || n == 4){
		return {
			nam: "Pre-Fab Arcologies",
			col: ww.tGreen,
			req: 1,
			desc: "Some TGs will appear each time you clear a Wave",
			num: 4
		}
	}
	
	if(n == "Bio Stims" || n == 5){
		return {
			nam: "Bio Stims",
			col: ww.tGreen,
			req: 2,
			desc: "Action Card buffs will last twice as long",
			num: 5
		}
	}
	
	if(n == "Neuroglaive" || n == 6){
		return {
			nam: "Neuroglaive",
			col: ww.tGreen,
			req: 2,
			desc: "Shoot left and right",
			num: 6
		}
	}
	
	if(n == "Instinct Training" || n == 7){
		return {
			nam: "Instinct Training",
			col: ww.tGreen,
			req: 4,
			desc: "prevent some bad thing",
			num: 7
		}
	}
	
	if(n == "Mageon Implants" || n == 8){
		return {
			nam: "Mageon Implants",
			col: ww.tGreen,
			req: 4,
			desc: "Draw even more Action Cards",
			num: 8
		}
	}
	
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////
	/////   BLUE  ///////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////
	
	if(n == "Antimass Deflectors" || n == 11){
		var tt = {
			nam: "Antimass Deflectors",
			col: ww.tBlue,
			req: 1,
			desc: "Touching an Asteroid destroies it",
			num: 11
		};
		if(ww.stage > 5){ tt.req = 0; }
		return tt;
	}
	
	if(n == "Gravity Drive" || n == 10){
		return {
			nam: "Gravity Drive",
			col: ww.tBlue,
			req: 1,
			desc: "Move a little faster",
			num: 10
		}
	}
	
	if(n == "Fleet Logistics" || n == 12){
		return {
			nam: "Fleet Logistics",
			col: ww.tBlue,
			req: 4,
			desc: "Move a little faster",
			num: 12
		}
	}
	
	if(n == "Light/Wave Deflector" || n == 13){
		return {
			nam: "Light/Wave Deflector",
			col: ww.tBlue,
			req: 5,
			desc: "Pass safely through enemy shots sometimes",
			num: 13
		}
	}
	
	if(n == "Dark Energy Tap" || n == 14){
		return {
			nam: "Dark Energy Tap",
			col: ww.tBlue,
			req: 0,
			desc: "You can collect Frontier Tokens",
			num: 14
		}
	}
	
	if(n == "Sling Relay" || n == 15){
		return {
			nam: "Sling Relay",
			col: ww.tBlue,
			req: 2,
			desc: "Shoot powerful extra shots about half the time",
			num: 15
		}
	}
	
	if(n == "Maneuvering Jets" || n == 16){
		return {
			nam: "Maneuvering Jets",
			col: ww.tBlue,
			req: 2,
			desc: "Move with such precision that TGs are easy to collect",
			num: 16
		}
	}
	
	if(n == "Aetherstream" || n == 17){
		return {
			nam: "Aetherstream",
			col: ww.tBlue,
			req: 3,
			desc: "Speed up the game- Speed Runner's BFF",
			num: 17
		}
	}
	
	if(n == "Chaos Mapping" || n == 18){
		return {
			nam: "Chaos Mapping",
			col: ww.tBlue,
			req: 4,
			desc: "Increase the max limit of Ghost Ships to four",
			num: 18
		}
	}
	


	//////////////////////////////////////////////////////////////////////////////////////////////
	/////   YELLOW  /////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////
	
	if(n == "Sarween Tools" || n == 20){
		return {
			nam: "Sarween Tools",
			col: ww.tYellow,
			req: 0,
			desc: "Foes will drop more Trade Goods",
			num: 20
		}
	}
	
	if(n == "Graviton Laser System" || n == 21){
		return {
			nam: "Graviton Laser System",
			col: ww.tYellow,
			req: 1,
			desc: "Shooting enemy Fighters creates extra shots",
			num: 21
		}
	}
	
	if(n == "Transit Diodes" || n == 22){
		return {
			nam: "Transit Diodes",
			col: ww.tYellow,
			req: 2,
			desc: "Produce some Fighters each time you clear a Wave",
			num: 22
		}
	}
	
	if(n == "Integrated Economy" || n == 23){
		return {
			nam: "Integrated Economy",
			col: ww.tYellow,
			req: 4,
			desc: "Build a free Ghost Ship at the end of each Wave",
			num: 23
		}
	}
	
	if(n == "Scanlink Drone Network" || n == 24){
		return {
			nam: "Scanlink Drone Network",
			col: ww.tYellow,
			req: 1,
			desc: "Find Relic Fragments more often",
			num: 24
		}
	}
	
	if(n == "Predictive Intelligence" || n == 25){
		return {
			nam: "Predictive Intelligence",
			col: ww.tYellow,
			req: 2,
			desc: "Fire shots that hone in on foes",
			num: 25
		}
	}
	
	if(n == "E-Res Siphons" || n == 26){
		return {
			nam: "E-Res Siphons",
			col: ww.tYellow,
			req: 3,
			desc: "Gain TGs when you are damaged",
			num: 26
		}
	}
	
	if(n == "Inheritance Systems" || n == 27){
		return {
			nam: "Inheritance Systems",
			col: ww.tYellow,
			req: 4,
			desc: "Ignore all technology pre-reqs",
			num: 27
		}
	}
	
	if(n == "Mirror Computing" || n == 28){
		return {
			nam: "Mirror Computing",
			col: ww.tYellow,
			req: 5,
			desc: "Trade Goods are worth double",
			num: 28
		}
	}
	
	
	
	
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////
	/////   RED //////////////////////////////////////////////////////////////////////////////////
	//////////////////////////////////////////////////////////////////////////////////////////////
	
	if(n == "Plasma Scoring" || n == 30){
		return {
			nam: "Plasma Scoring",
			col: ww.tRed,
			req: 0,
			desc: "Your basic shots do more damage",
			num: 30
		}
	}
	
	if(n == "Magen Defense Grid" || n == 31){
		return {
			nam: "Magen Defense Grid",
			col: ww.tRed,
			req: 1,
			desc: "Double your max shield power",
			num: 31
		}
	}
	
	if(n == "Duranium Armor" || n == 32){
		return {
			nam: "Duranium Armor",
			col: ww.tRed,
			req: 3,
			desc: "Double your hull points",
			num: 32
		}
	}
	
	if(n == "Assault Cannon" || n == 33){
		return {
			nam: "Assault Cannon",
			col: ww.tRed,
			req: 4,
			desc: "Your shots do more damage",
			num: 33
		}
	}
	
	if(n == "Automated Defense Turrets" || n == 34){
		return {
			nam: "Automated Defense Turrets",
			col: ww.tRed,
			req: 2,
			desc: "Obliterate nearby Fighters",
			num: 34
		}
	}
	
	if(n == "Hylar V Assault Laser" || n == 35){
		return {
			nam: "Hylar V Assault Laser",
			col: ww.tRed,
			req: 1,
			desc: "Your shots do more damage",
			num: 35
		}
	}
	
	if(n == "Deep Space Cannon" || n == 36){
		return {
			nam: "Deep Space Cannon",
			col: ww.tRed,
			req: 2,
			desc: "Your shots have long range",
			num: 36
		}
	}
	
	if(n == "Self Assembly Routines" || n == 37){
		return {
			nam: "Self Assembly Routines",
			col: ww.tRed,
			req: 3,
			desc: "Hull repairs over time",
			num: 37
		}
	}
	
	if(n == "Valkyrie Particle Weave" || n == 38){
		return {
			nam: "Valkyrie Particle Weave",
			col: ww.tRed,
			req: 5,
			desc: "Taking any damage fires a powerful attack",
			num: 38
		}
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	return noone;
}