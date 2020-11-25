other.hp-=24;
deathAni=instance_create_layer(x,y,"Instances",obj_enemy_worm_death);
deathAni.image_angle=image_angle;
deathAni.image_xscale=3;
deathAni.image_yscale=3;
obj_player.isHit=true;
obj_player.alarm[0]=5;
instance_destroy(self);