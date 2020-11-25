/// @description Insert description here
// You can write your code in this editor
if(point_distance(x,y,obj_player.x,obj_player.y)<100){foundPlayer=true;}
if(foundPlayer=true){
	delay--;
	if(delay<=0){
	instance_create_layer(x,y,"Instances",obj_slime_bubble);
	delay=150;}
move_towards_point(obj_player.x,obj_player.y,spd);}
if(hp<=0){
	if(instance_exists(obj_NPC1_moving)){
	if(obj_NPC1_moving.target=self){obj_NPC1_moving.target=noone;}}
	global.numslime--;
	instance_create_layer(x,y,"Instances",obj_enemy_slime_death);
	instance_create_layer(x,y,"Instances",obj_exit);	
	if(hasRose=0){instance_create_layer(x,y,"Instances",obj_rose);}
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

