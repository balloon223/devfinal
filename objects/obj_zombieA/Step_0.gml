/// @description Insert description here
// You can write your code in this editor
zsort();
distance=point_distance(x,y,obj_player.x,obj_player.y)
if(place_meeting(x+hspd,y,obj_wall)){hspd=-hspd;}
if(foundPlayer=false)
	{
	x+=hspd;
	if(hspd>0){image_xscale=1;}
	if(hspd<0){image_xscale=-1;}

	}

if(distance<200){foundPlayer=true;}
if(foundPlayer=true){
	if(distance>50){
	move_towards_point(obj_player.x,obj_player.y,spd);
	if(obj_player.x>x)
	{image_xscale=1;}
	else{image_xscale=-1;}
	cdown--;
}
else
	{
	cdown--;
	s_timer--;
	}
	}
if(cdown<=15)
{if(distance<=80){sprite_index=spr_zombieA_aggro;} else{sprite_index=spr_zombieA_walk;}}
else{sprite_index=spr_zombieA_walk;}

if(cdown<=0 && distance<=50)
	{
	if(obj_player.x>x)
	{image_xscale=1;attack=instance_create_layer(x,y,"Instances",obj_zombieAttack);attack.image_xscale=1; attack.x+=10;}
	else
	{image_xscale=-1; attack=instance_create_layer(x,y,"Instances",obj_zombieAttack);attack.image_xscale=-1; attack.x-=10;}


	cdown=100;
	}



if(hp<=0){
	if(instance_exists(obj_NPC1_moving)){
	if(obj_NPC1_moving.target=self){obj_NPC1_moving.target=noone;}}
	global.numworm--;
	deathAni=instance_create_layer(x,y,"Instances",obj_enemy_zombieA_death);
	deathAni.image_angle=image_angle;
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

