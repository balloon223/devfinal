if(place_meeting(x,y+50,obj_wall))
	{
	depth=10;
	}
	else {depth=2;}

//Boss Battle
if(hit=true)
{
recoverTimer--;
if(recoverTimer<=0){hit=false; recoverTimer=5;}
}

//Generals
upperwall=instance_place(x,y-100,obj_wall);
lowerwall=instance_place(x,y+100,obj_wall);
leftwall=instance_place(x-100,y,obj_wall);
rightwall=instance_place(x+100,y,obj_wall);
if(hp<=0)
{
game_restart();
}



if(moveState=-1){if(!keyboard_check(ord("J"))){sprite_index=spr_playerGun_faceUp; }}
if(moveState=-2){if(!keyboard_check(ord("J"))){sprite_index=spr_playerGun_faceDown; }}
if(moveState=-3){if(!keyboard_check(ord("J"))){sprite_index=spr_playerGun_faceLeft; image_xscale=1;facing=1;}}
if(moveState=-4){if(!keyboard_check(ord("J"))){sprite_index=spr_playerGun_faceLeft; image_xscale=-1;facing=-1}}
if(moveState=1){sprite_index=spr_playerGun_moveUp;}
if(moveState=2){sprite_index=spr_playerGun_moveDown;}
if(moveState=3){sprite_index=spr_playerGun_moveLeft; image_xscale=1;}
if(moveState=4){sprite_index=spr_playerGun_moveLeft; image_xscale=-1;}

if(canWarp=true){
warpTimer--;
}

if(keyboard_check(ord("W")))
	{
	if(warpTimer<=0){
	if(keyboard_check(vk_shift))
	{instance_create_layer(x,y,"Instances",particle);if(place_meeting(x,y-100,upperwall)){y=upperwall.y-10; teleport=true; warpTimer=50;}
	else{y=y-100; teleport=true; warpTimer=50;}
	}}
	teleport=false;
	y=y-vspd;
	moving=true;
	moveState=1;
	}
	else{moving=false;}

if(keyboard_check(ord("S")))
	{
	if(warpTimer<=0){
	if(keyboard_check(vk_shift))
	{instance_create_layer(x,y,"Instances",particle);if(place_meeting(x,y+100,lowerwall)){y=y+10; teleport=true; warpTimer=50;}
	else{y=y+100; teleport=true; warpTimer=50;}
	}}
	teleport=false;
	y=y+vspd;
	moving=true;
	moveState=2;
	}
	else{moving=false;}

if(keyboard_check(ord("A")))
	{
	if(warpTimer<=0){
	if(keyboard_check(vk_shift))
	{instance_create_layer(x,y,"Instances",particle);if(place_meeting(x-100,y,leftwall)){x=x-10; teleport=true; warpTimer=50;}
	else{x=x-100; teleport=true; warpTimer=50;}
	}}
	teleport=false;
	x=x-hspd;
	moving=true;
	moveState=3;
	}
	else{moving=false;}

if(keyboard_check(ord("D")))
	{
	if(warpTimer<=0){
	if(keyboard_check(vk_shift))
	{instance_create_layer(x,y,"Instances",particle);if(place_meeting(x,x+100,rightwall)){x=x+10; teleport=true; warpTimer=50;}
	else{x=x+100; teleport=true; warpTimer=50;}
	}}
	teleport=false;
	x=x+hspd;
	moving=true;
	moveState=4;
	}
	else{moving=false;}
	
if(keyboard_check(ord("J")))
	{
	if(delay<=0){
	instance_create_layer(x,y+10,"Instances",obj_bullet);
	delay=5;
	}
	delay--;
	if(moveState=1){sprite_index=spr_playerGun_moveUp_attack;} if(moveState=-1){sprite_index=spr_playerGun_moveUp_attack;}
	if(moveState=2){sprite_index=spr_playerGun_attack;}	if(moveState=-2){sprite_index=spr_playerGun_attack;}
	if(moveState=3){sprite_index=spr_playerGun_moveLeft_attack;} if(moveState=-3){sprite_index=spr_playerGun_moveLeft_attack;}
	if(moveState=4){sprite_index=spr_playerGun_moveLeft_attack;image_xscale=-1;} if(moveState=-4){sprite_index=spr_playerGun_moveLeft_attack;image_xscale=-1;}

		}
if(keyboard_check_released(ord("J")))
	{delay=0;}


if(keyboard_check(vk_nokey))
	{
	if(moveState=1){moveState=-1;}
	if(moveState=2){moveState=-2;}
	if(moveState=3){moveState=-3;}
	if(moveState=4){moveState=-4;}
	}


if(keyboard_check(ord("W"))){moveState=1;}
if(keyboard_check(ord("S"))){moveState=2;}
if(keyboard_check(ord("A"))){moveState=3;}
if(keyboard_check(ord("D"))){moveState=4;}




//Z-sorting of bushes and NPCs
zsort();

//Check Collision with Walls
if (place_meeting(x+hspd,y,obj_wall)) {
    x -= hspd;
}

if (place_meeting(x-hspd,y,obj_wall)) {
    x += hspd;
}

if (place_meeting(x,y+vspd,obj_wall)) {
    y -= vspd;
}

if (place_meeting(x,y-vspd,obj_wall)) {
    y += vspd;
}

if(hasShoes=true){
	image_speed=1.2;
if(instance_exists(obj_NPC1_moving))
	{
	obj_NPC1_moving.spd=5;
	obj_NPC1_moving.image_speed=1.5;
	}
}