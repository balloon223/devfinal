/// @description Insert description here
// You can write your code in this editor
depth=-2;
timer=10;
image_xscale=0.4;
image_yscale=0.4;
audio_play_sound(sound_hit,1,0);


if(instance_exists(obj_wall))
{
wall=instance_nearest(x,y,obj_wall);
if(y-100<wall.y)
	{
	depth=100;
	}
}