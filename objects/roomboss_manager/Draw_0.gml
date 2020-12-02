/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)){
draw_sprite(spr_healthborder_bg, 0, obj_player.x-25, obj_player.y-50);
draw_sprite_stretched(spr_healthbar,0,obj_player.x-25,obj_player.y-50,(obj_player.hp/obj_player.hp_max)*obj_player.healthbar_width,obj_player.healthbar_height);
draw_sprite(spr_healthborder, 0, obj_player.x-25, obj_player.y-50);
}
else if(instance_exists(obj_playerGun)){
draw_sprite(spr_healthborder_bg, 0, obj_playerGun.x-25, obj_playerGun.y-50);
draw_sprite_stretched(spr_healthbar,0,obj_playerGun.x-25,obj_playerGun.y-50,(obj_playerGun.hp/obj_playerGun.hp_max)*obj_playerGun.healthbar_width,obj_playerGun.healthbar_height);
draw_sprite(spr_healthborder, 0, obj_playerGun.x-25, obj_playerGun.y-50);
}
