/// @description Insert description here
// You can write your code in this editor
if(!isHit){draw_self();}
else{
	gpu_set_fog(true, c_red, 0, 0);
	draw_self();
	gpu_set_fog(false, c_red, 0, 0);
	}