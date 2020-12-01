/// @description Insert description here
// You can write your code in this editor
timer--;
actionNum=irandom(3);
if(timer<=0)
	{
		if(actionNum=0){
	instance_create_layer(room_width/2,-50,"Instances",obj_boss_leg);
	timer=200;
	}
	
		if(actionNum=1){
	instance_create_layer(room_width/2+300, room_height+50,"Instances",obj_boss_leg);
	timer=200;
	}
	
		if(actionNum=2){
	instance_create_layer(-50, room_height/2,"Instances",obj_boss_leg);
	timer=200;
	}
	
		if(actionNum=3){
	instance_create_layer(room_width+50, room_height/2,"Instances",obj_boss_leg);
	timer=200;
	}
}