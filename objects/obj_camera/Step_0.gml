/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
x=lerp(x,obj_player.x,0.08);
y=lerp(y,obj_player.y,0.08);
}

var cwidth = camera_get_view_width(view_camera[0]);
var cheight = camera_get_view_height(view_camera[0]);
camera_set_view_pos(view_camera[0],x-cwidth/2, y-cheight/2);