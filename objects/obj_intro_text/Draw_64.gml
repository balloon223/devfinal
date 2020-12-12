/// @description Insert description here
// You can write your code in this editor
if(local_test==0){
text="I gotta find that disk";}
else{text="That is the only way ";}


if (keyboard_check_pressed(ord("E")))
{
	local_test=1;
	//draw_set_colour(c_green);
	
	
    
    alarm[0] = room_speed * 3;

    
   
}
draw_set_halign(fa_center);
draw_text_transformed(x, y, text, 1, 1, image_angle);
