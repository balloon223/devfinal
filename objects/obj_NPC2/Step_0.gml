/// @description Insert description here
// You can write your code in this editor
dist=point_distance(x,y,obj_player.x,obj_player.y);
if(dist<50){
	if(global.hasKey=false){
		if(keyboard_check(vk_space)){
			if(myText=noone){
			audio_play_sound(sound_NPC,1,0);
			myText=instance_create_layer(x,y-80,"Text",obj_textbox);
			myText.text="How the heck did you get in here?";
			}
		}
		}
	if(global.hasKey=true){
		if(keyboard_check(vk_space)){
			if(myText=noone){
			audio_play_sound(sound_NPC,1,0);
			myText=instance_create_layer(x,y-80,"Text",obj_textbox);
			myText.text="The exit is north of here, hidden behind a bush";
			}
		}
		}
}else if(myText!=noone){
instance_destroy(myText);
myText=noone;
}