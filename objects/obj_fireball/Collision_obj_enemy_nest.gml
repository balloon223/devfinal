/// @description Insert description here
// You can write your code in this editor
other.hp-=2;
audio_play_sound(sound_hit,1,0);
instance_create_layer(x,y,"Instances",obj_fireball_explode);
instance_destroy(self);