/// @description Insert description here
// You can write your code in this editor
dist=point_distance(x,y,obj_player.x,obj_player.y);

if(global.hasKey=true)
	{
	if(obj_player.y>560){
		x=3050;
		y=1260;}
	else{x=1880; y=130;}
	}

if(dist<50){
	if(global.hasKey=false){
		if(keyboard_check(vk_space)){
			if(myText=noone){
			audio_play_sound(sound_NPC,1,0);
			myText=instance_create_layer(x,y-80,"Text",obj_textbox);
			myText.text="The key is some way to the east of here";
			}
		}
		}
	if(global.hasKey=true){
		if(keyboard_check(vk_space)){
			if(myText=noone){
			if(obj_player.numRose<1){
			audio_play_sound(sound_NPC,1,0);
			myText=instance_create_layer(x,y-80,"Text",obj_textbox);
			myText.text="You found the key. Congrats! Now if you'll excuse me for a second. I have a habit of collecting flowers. Be sure to talk to me if you find any peculiar ones.";
			}
			else if(obj_player.numRose<2){
			audio_play_sound(sound_NPC,1,0);
			myText=instance_create_layer(x,y-80,"Text",obj_textbox);
			myText.text="Oh, a rose! Is this...for me?";}
			else if(obj_player.numRose<3){
			audio_play_sound(sound_NPC,1,0);
			myText=instance_create_layer(x,y-80,"Text",obj_textbox);
			myText.text="You're...making me blush...";
			sprite_index=spr_NPC1_blush;
			}
			else if(obj_player.numRose<5){
			audio_play_sound(sound_NPC,1,0);
			myText=instance_create_layer(x,y-80,"Text",obj_textbox);
			myText.text="I need...to think about this...Please leave me be for a bit...";
			sprite_index=spr_NPC1_inLove;
			}
			else if(obj_player.numRose>=7){
			audio_play_sound(sound_NPC,1,0);
			myText=instance_create_layer(x,y-80,"Text",obj_textbox);
			myText.text="I have decided to follow you to the end of the world. Will you accept?(Press Y to accept)";
			sprite_index=spr_NPC1;
			canFollow=true;
			}
				}
		}
		}
}else if(myText!=noone){
instance_destroy(myText);
myText=noone;
}

	if(instance_exists(myText)){if(canFollow=true){
		if(keyboard_check_pressed(ord("Y"))){follow=true; obj_player.numRose -= 7;}}
		}
		
if(follow=true) 
{
if(myText!=noone){
instance_destroy(myText);
myText=noone;}
instance_create_layer(x,y,"Instances",obj_NPC1_moving);
instance_destroy(self);
}


