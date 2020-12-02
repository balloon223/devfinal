/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player)<=20)
{
	create_textevent("Shelter Door Open")
	room_goto(Room2);
}