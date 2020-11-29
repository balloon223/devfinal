/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
if distance_to_object(obj_player)<=25&&keyboard_check_pressed(ord("E"))
{
	if sprite_index==coffee_machine&&coffe_empty==false
	{
		sprite_index=coffee_machine_1;
		coffe_empty=true;
		//1:with_full_coffee 2:with_empty_coffee
		exit;
		
	}
	
}

