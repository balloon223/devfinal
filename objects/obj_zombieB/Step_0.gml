/// @description Insert description here
// You can write your code in this editor
zsort();

//summon zombies
if(sumtimer<=0 && numSummed<=0)
{
zombie1=instance_create_layer(x+20,y,"Instances",obj_zombieSum);
zombie2=instance_create_layer(x-20,y,"Instances",obj_zombieSum);
zombie1.owner=id;
zombie2.owner=id;
numSummed=2;
sumtimer=300;
}


distance=point_distance(x,y,obj_player.x,obj_player.y)
if(place_meeting(x+hspd,y,obj_wall)){hspd=-hspd;}
if(foundPlayer=false)
	{
	x+=hspd;
	if(hspd>0){image_xscale=1;}
	if(hspd<0){image_xscale=-1;}

	}

px=obj_player.x+random_range(30,300);
py=obj_player.y+random_range(30,300);

if(distance<200){foundPlayer=true; x+=hspd; y+=vspd;}
if(foundPlayer=true){
	sumtimer--;
	if(distance>50){
	if(obj_player.x>x)
	{image_xscale=1;}
	else{image_xscale=-1;}
}

if(distance<150)
{
	if(x>obj_player.x){
	hspd=0.8;
	}
	else{hspd=-0.8;}
	if(y>obj_player.y){
	vspd=0.8;
	}
	else{vspd=-0.8;}
}

else
	{
hspd=0.5
vspd=0.5
	cdown--;
	}
	}
	
if(cdown<=0)
	{
	if(distance<50){
	if(obj_player.x>x)
	{image_xscale=1;attack=instance_create_layer(x,y,"Instances",obj_zombieAttack);attack.image_xscale=1; attack.x+=10;}
	else
	{image_xscale=-1; attack=instance_create_layer(x,y,"Instances",obj_zombieAttack);attack.image_xscale=-1; attack.x-=10;}
	}

	cdown=100;
	}


if(hp<=0){
	zombie1.owner=noone;
	zombie2.owner=noone;
	if(instance_exists(obj_NPC1_moving)){
	if(obj_NPC1_moving.target=self){obj_NPC1_moving.target=noone;}}
	global.numworm--;
	deathAni=instance_create_layer(x,y,"Instances",obj_enemy_worm_death);
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
