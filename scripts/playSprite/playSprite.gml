// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playSprite(){
y_dist=abs(y-obj_player.y);
//play sprites
	image_speed=1;
	if(y>obj_player.y){
		if(y_dist<40){
		if(x>obj_player.x){sprite_index=spr_NPC1_moveLeft; image_xscale=1;}
		if(x<obj_player.x){sprite_index=spr_NPC1_moveRight; image_xscale=-1;}
			}
		else{sprite_index=spr_NPC1_moveUp;}
		}
	if(y<obj_player.y){
		if(y_dist<40){
		if(x>obj_player.x){sprite_index=spr_NPC1_moveLeft; image_xscale=1;}
		if(x<obj_player.x){sprite_index=spr_NPC1_moveRight; image_xscale=-1;}
			}	
		else{sprite_index=spr_NPC1_moveDown;}
	}
}