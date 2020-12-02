/// @description Insert description here
// You can write your code in this editor
dist=point_distance(x,y,obj_player.x,obj_player.y);
if(dist<50){
	if(global.hasKey=false){
		if(keyboard_check(vk_space)){
			
			create_textevent("How the heck did you get in here?",-1);
		
			
		}
		}
	if(global.hasKey=true){
		if(keyboard_check(vk_space)){
			
			create_textevent("The exit is north of here, hidden behind a bush",-1)
			
		}
		}
}else if(myText!=noone){
instance_destroy(myText);
myText=noone;
}