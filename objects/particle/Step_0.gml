/// @description Insert description here
// You can write your code in this editor
if(obj_playerGun.moveState=1){
x=lerp(x,obj_player.x,0.08);
y=lerp(y,obj_player.y-80,0.08);
}

if(obj_playerGun.moveState=2){
x=lerp(x,obj_player.x,0.08);
y=lerp(y,obj_player.y+80,0.08);
}

if(obj_playerGun.moveState=3){
x=lerp(x,obj_player.x-80,0.08);
y=lerp(y,obj_player.y,0.08);
}

if(obj_playerGun.moveState=4){
x=lerp(x,obj_player.x+80,0.08);
y=lerp(y,obj_player.y,0.08);
}

else{
x=lerp(x,obj_player.x,0.08);
y=lerp(y,obj_player.y,0.08);
}