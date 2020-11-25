/// @description Insert description here
// You can write your code in this editor
other.hp--;
other.foundPlayer=true;
bullet=instance_create_layer(x,y,"Instances",obj_bulletHit);
bullet.image_angle = image_angle;
instance_destroy();