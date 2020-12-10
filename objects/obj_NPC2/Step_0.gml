/// @description Insert description here
// You can write your code in this editor
dist=point_distance(x,y,obj_player.x,obj_player.y);
if distance_to_object(obj_player)>=150 
{
	talk_now=true;
}
if(dist<50){
	if(global.hasKey=false){
		if(keyboard_check(ord("E"))&&talk_now){
			
			create_textevent("Hmmm",-1);
		talk_now=false;
			
		}
		}
	if(global.hasKey=true){
		if(keyboard_check(ord("E"))){
			
			create_textevent("If you see an old fashioned CD, bring it to me. I'll give you anything.",-1)
			
		}
		}
}else if(myText!=noone){
instance_destroy(myText);
myText=noone;
}