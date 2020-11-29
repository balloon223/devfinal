/// @description Insert description here
// You can write your code in this editor
draw_self();
if(distance_to_object(obj_player)<=20)
{
	if(info_type==0){
	for(var i=0;i<4;i++){
	draw_sprite_ext(UI_empty,i,x,y-40,1,1,0,c_white,1);
	
	//image_speed=1;
	}}
	if(info_type==1){
	for(var i=0;i<4;i++){
	draw_sprite_ext(UI_question,i,x,y-40,1,1,0,c_white,1);
	
	//image_speed=1;
	}}
	
	if(info_type==2){
	for(var i=0;i<4;i++){
	draw_sprite_ext(UI_infromation,i,x,y-40,1,1,0,c_white,1);
	
	//image_speed=1;
	}}
	if(info_type==3){
	for(var i=0;i<4;i++){
	draw_sprite_ext(UI_save_point,i,x,y-40,1,1,0,c_white,1);
	
	//image_speed=1;
	}}
}