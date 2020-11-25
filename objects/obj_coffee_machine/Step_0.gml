/// @description Insert description here
// You can write your code in this editor
if(image_index>=12)
{
	image_index=0;
	image_speed=0;
	makecoffe=false;
	coffe_empty=false;
}
if(makecoffe==true)
{
	image_speed=1;
}
if(coffe_empty==false&&distance_to_object(obj_player)<=15)
{
	if keyboard_check(ord("E"))
	{
		sprite_index=coffee_machine_2;
	}
	
}