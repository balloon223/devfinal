if(global.numworm<30)
	{
	timer--;
	if(timer<=0){
	instance_create_layer(x,y+50,"Instances",obj_enemy_worm);
	timer=100;
	}
	}
	
if(hp<=0){
	if(instance_exists(obj_NPC1_moving)){
	if(obj_NPC1_moving.target=self){obj_NPC1_moving.target=noone;}}
	deathAni=instance_create_layer(x,y,"Instances",obj_enemy_worm_death);
	deathAni.image_angle=image_angle;
	instance_create_layer(x,y,"Instances",obj_key2);
	instance_destroy();
	}

//pushes the player back on collision
/*
if(place_meeting(x+obj_player.hspd,y,obj_player))
	{
	obj_player.hspd=obj_player.hspd-hitSpeed;
	}
else{obj_player.hspd=3;}
	
if(place_meeting(x,y+obj_player.vspd,obj_player))
	{
	obj_player.vspd=obj_player.vspd-hitSpeed;
	}
else{obj_player.vspd=3;}
*/

