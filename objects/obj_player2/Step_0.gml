/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y+50,obj_wall))
	{
	depth=10;
	}
	else {depth=2;}
	
if(hp<=0)
{
game_restart();
}




if(moveState=-1){sprite_index=spr_player2_moveUp; image_index=0;}
if(moveState=-2){sprite_index=spr_player2_moveDown; image_index=0;}
if(moveState=-3){sprite_index=spr_player2_moveLeft; image_index=0; image_xscale=1;facing=1;}
if(moveState=-4){sprite_index=spr_player2_moveLeft; image_index=0; image_xscale=-1;facing=-1;}
if(moveState=1){sprite_index=spr_player2_moveUp;}
if(moveState=2){sprite_index=spr_player2_moveDown;}
if(moveState=3){sprite_index=spr_player2_moveLeft; image_xscale=1;facing=1;}
if(moveState=4){sprite_index=spr_player2_moveLeft; image_xscale=-1;facing=-1;}
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
zsort2();

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

//Check Collision with coffee switch
if (place_meeting(x+3,y,obj_information)) {
    x -= 3;
}

if (place_meeting(x-3,y,obj_information)) {
    x += 3;
}

if (place_meeting(x,y+3,obj_information)) {
    y -= 3;
}

if (place_meeting(x,y-3,obj_information)) {
    y += 3;
}


//Check Collision with objects
if (place_meeting(x+hspd,y,obj_parent)) {
    x -= hspd;
}

if (place_meeting(x-hspd,y,obj_parent)) {
    x += hspd;
}

if (place_meeting(x,y+vspd,obj_parent)) {
    y -= vspd;
}

if (place_meeting(x,y-vspd,obj_parent)) {
    y += vspd;
}


