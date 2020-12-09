/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_player2)<=80&&keyboard_check_pressed(ord("E")))
{
	if invest_num<=3
	{
		create_textevent("I should check if everything in my room is ok before I left.",-1);
	}else{room_goto(Room2);}
	//create_textevent("Shelter Door Open",-1);
	
}