/// @description Insert description here
// You can write your code in this editor
dist=point_distance(x,y,obj_player.x,obj_player.y);
if distance_to_object(obj_player)>=150 
{
	talk_now=true;
}
if(global.hasKey=true)
	{
	if(obj_player.y>560){
		x=2250;
		y=1260;}
	else{x=1880; y=130;}
	}

if(dist<50){
	if(global.hasKey=false){
		if(keyboard_check(ord("E"))){
			
			create_textevent("......",-1);
			
		}
		}
	if(global.hasKey=true){
		if(keyboard_check(ord("E"))&&talk_now){
			
			if(obj_player.numRose<1){
				create_textevent(["You found the key. Congrats! Now if you'll excuse me for a second.", "I have a habit of collecting flowers.", "Be sure to talk to me if you find any peculiar ones."],-1);
			
			}
			else if(obj_player.numRose<2){
			create_textevent(["Oh, a rose! Is this...for me?","You're...making me blush..."],-1);
			
			}
			else if(obj_player.numRose<5){
				create_textevent("I need...to think about this...Please leave me be for a bit...",-1);
			
			sprite_index=spr_NPC1_inLove;
			}
			else if(obj_player.numRose>=7){
			create_textevent(["Have you heard? There is a CD that everyone is looking for...","I heard it's somehow connected to the old world", "You know, a long time ago, before our world became like this."],-1);
			
			sprite_index=spr_NPC1;
			canFollow=true;
			}
			talk_now=false;
				
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


