/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y+30,obj_wall))
	{
	depth=10;
	}
	else {depth=2;}
	
if(hp<=0)
{
room_goto(Room_death);
}



if(moveState=-1){sprite_index=spr_player_faceUp;}
if(moveState=-2){sprite_index=spr_player;}
if(moveState=-3){sprite_index=spr_player_faceLeft;  image_xscale=1;facing=1;}
if(moveState=-4){sprite_index=spr_player_faceLeft; image_xscale=-1;facing=-1;}
if(moveState=1){sprite_index=spr_player_moveUp;}
if(moveState=2){sprite_index=spr_player_moveDown;}
if(moveState=3){sprite_index=spr_player_moveLeft; image_xscale=1;facing=1;}
if(moveState=4){sprite_index=spr_player_moveLeft; image_xscale=-1;facing=-1;}
if !instance_exists(obj_textbox){
if(keyboard_check(ord("W")))
	{
	y=y-vspd;
	moving=true;
	moveState=1;
	walktimer--;
	}

if(keyboard_check(ord("S")))
	{
	y=y+vspd;
	moving=true;
	moveState=2;
	walktimer--;
	}

if(keyboard_check(ord("A")))
	{
	x=x-hspd;
	moving=true;
	moveState=3;
	walktimer--;
	}

if(keyboard_check(ord("D")))
	{
	x=x+hspd;
	moving=true;
	moveState=4;
	walktimer--;
	}
	
if(keyboard_check(vk_nokey))
	{
	walktimer=20;
	walktimer--;
	}


if(walktimer<=0)
	{
	audio_play_sound(sound_walk,1,0);
	walktimer=20;
	}


if(keyboard_check(ord("W"))){moveState=1;}
if(keyboard_check(ord("S"))){moveState=2;}
if(keyboard_check(ord("A"))){moveState=3;}
if(keyboard_check(ord("D"))){moveState=4;}


}
if(keyboard_check(vk_nokey))
	{
	if(moveState=1){moveState=-1;}
	if(moveState=2){moveState=-2;}
	if(moveState=3){moveState=-3;}
	if(moveState=4){moveState=-4;}
	}


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


