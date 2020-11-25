/// @description Insert description here
// You can write your code in this editor
door=instance_nearest(x,y,obj_door2);
if(global.hasKey2=true)
	{
		audio_play_sound(sound_door,1,0);
		instance_destroy(door);
		
	}
