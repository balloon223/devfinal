/// @description Insert description here
// You can write your code in this editor
if(global.hasShoes=true){
	image_speed=1.2;
	obj_playerGun.hspd=5;
	obj_playerGun.vspd=5;

}
if(leghp<=0 && spawn=false)
	{
	spawntimer--;
	if(spawntimer<=0){
		instance_create_layer(200,obj_playerGun.y,"Instances",obj_boss);
		spawn=true;
		}
	}

if(leghp>40){
timer--;
actionNum=irandom(3);
if(timer<=0)
	{
		if(actionNum=0){
	instance_create_layer(room_width/2,-50,"Instances",obj_boss_leg);
	obj_boss_leg.image_xscale=-1;
	timer=230;
	}
	
		if(actionNum=1){
	instance_create_layer(room_width/2+300, room_height+50,"Instances",obj_boss_leg);
	obj_boss_leg.image_xscale=1;	
	timer=230;
	}
	
		if(actionNum=2){
	instance_create_layer(-50, room_height/2,"Instances",obj_boss_leg);
	timer=230;
	obj_boss_leg.image_xscale=-1;
	}
	
		if(actionNum=3){
	instance_create_layer(room_width+50, room_height/2,"Instances",obj_boss_leg);
	timer=230;
	obj_boss_leg.image_xscale=1;
	}
}}


else if(leghp>0){
timer--;
actionNum=irandom(3);
if(timer<=0)
	{
		if(actionNum=0){
	instance_create_layer(room_width/2,-50,"Instances",obj_boss_leg);
	obj_boss_leg.image_xscale=-1;
	timer=30;
	}
	
		if(actionNum=1){
	instance_create_layer(room_width/2+300, room_height+50,"Instances",obj_boss_leg);
	obj_boss_leg.image_xscale=1;	
	timer=30;
	}
	
		if(actionNum=2){
	instance_create_layer(-50, room_height/2,"Instances",obj_boss_leg);
	timer=30;
	obj_boss_leg.image_xscale=-1;
	}
	
		if(actionNum=3){
	instance_create_layer(room_width+50, room_height/2,"Instances",obj_boss_leg);
	timer=30;
	obj_boss_leg.image_xscale=1;
	}
}}