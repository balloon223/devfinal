if(other.isHit=false){
other.hp-=8;
deathAni=instance_create_layer(other.x,other.y,"Instances",obj_enemy_worm_death);
deathAni.image_angle=image_angle;
obj_player.isHit=true;
obj_player.alarm[0]=15;

obj_player.recoverTimer=30;
}