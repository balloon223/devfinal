/// @description Insert description here
// You can write your code in this editor
direction=point_direction(x,y,obj_player.x,obj_player.y);
speed = 10;
depth = 2;
alarm[0]=1000;
alarm[2]=80;
isHit=false;
dist=point_distance(x,y,obj_player.x,obj_player.y);
sndplayed=false;