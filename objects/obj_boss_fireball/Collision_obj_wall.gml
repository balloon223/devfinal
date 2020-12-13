/// @description Insert description here
// You can write your code in this editor
bullet=instance_create_layer(x,y,"Instances",obj_slime_bubble_explode);
bullet.image_angle = image_angle;
audio_play_sound(sound_hit,1,0);
instance_destroy();