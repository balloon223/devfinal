/// @description Insert description here
// You can write your code in this editor
audio_play_sound(sound_key,1,0);
instance_create_layer(x,y,"Instances",obj_playerGun);
instance_destroy(other);
instance_destroy();