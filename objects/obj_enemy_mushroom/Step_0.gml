/// @description Insert description here
// You can write your code in this editor
image_yscale=2;
if(point_distance(x,y,obj_player.x,obj_player.y)<200){foundPlayer=true;}
	if(x<obj_player.x)
	{
	image_xscale=2;
	}
	else
	{
	image_xscale=-2;
	}
if(foundPlayer=true){
	delay--;
	if(delay<=0){
	audio_play_sound(sound_mushroom_shoot,1,0);
	instance_create_layer(x,y,"Instances",obj_slime_bubble);
	delay=50;}
}
if(hp<=0){
	if(instance_exists(obj_NPC1_moving)){
	if(obj_NPC1_moving.target=self){obj_NPC1_moving.target=noone;}}
	deathAni=instance_create_layer(x,y,"Instances",obj_enemy_mushroom_death);
	deathAni.image_xscale=image_xscale;
	deathAni.image_yscale=image_yscale;
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
