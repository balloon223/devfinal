/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player2)<=80&&keyboard_check_pressed(ord("E")))
{
	create_textevent("Shelter Door Open",-1);
	room_goto(Room2);
}