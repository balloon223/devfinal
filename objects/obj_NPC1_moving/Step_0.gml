/// @description Insert description here
// You can write your code in this editor
dist=point_distance(x,y,obj_player.x,obj_player.y);

if(target!=noone){
	delay--;
	if(delay<=0){
	instance_create_layer(x,y,"Instances",obj_fireball);
	delay=30;}
}

playSprite();


	if(obj_player.moveState=-1){
	move_towards_point(obj_player.x,obj_player.y+50,spd);
	}
	if(obj_player.moveState=1){
	move_towards_point(obj_player.x,obj_player.y+50,spd);
	}
	if(obj_player.moveState=-2){
	move_towards_point(obj_player.x,obj_player.y-50,spd);
	}
	if(obj_player.moveState=2){
	move_towards_point(obj_player.x,obj_player.y-50,spd);
	}
	if(obj_player.moveState=-3){
	move_towards_point(obj_player.x+50,obj_player.y,spd);
	}
	if(obj_player.moveState=3){
	move_towards_point(obj_player.x+50,obj_player.y,spd);
	}
	if(obj_player.moveState=-4){
	move_towards_point(obj_player.x-50,obj_player.y,spd);
	}
	if(obj_player.moveState=4){
	move_towards_point(obj_player.x-50,obj_player.y,spd);
	}

