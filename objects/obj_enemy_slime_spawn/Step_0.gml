/// @description Insert description here
// You can write your code in this editor
timer--;
if(timer<=0)
	{
	instance_create_layer(x,y,"Instances",obj_enemy_slime);
	instance_destroy(self);
	}