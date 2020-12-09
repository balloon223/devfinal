/*depth=2;
/// @description Insert description here
// You can write your code in this editor
if(obj_playerGun.moveState=-1){direction=90;}
if(obj_playerGun.moveState=-2){direction=270;}
if(obj_playerGun.moveState=-3){direction=180;}
if(obj_playerGun.moveState=-4){direction=0;}
if(obj_playerGun.moveState=1){direction=90;}
if(obj_playerGun.moveState=2){direction=270;}
if(obj_playerGun.moveState=3){direction=180;}
if(obj_playerGun.moveState=4){direction=0;}
image_xscale=0.7;
image_yscale=0.7;
direction = direction + random_range(-10, 10);
speed = 18;
image_angle = direction - 90;
audio_play_sound(sound_shoot,1,0);

*/

direction = point_direction(x,y,mouse_x,mouse_y);
direction = direction + random_range(-10, 10);
speed = 18;
image_angle = direction - 90;
audio_play_sound(sound_shoot, 10, false);