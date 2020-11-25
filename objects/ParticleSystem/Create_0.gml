/// @description Insert description here
// You can write your code in this editor

part_system=part_system_create_layer("Instances",false);

part_emitter=part_emitter_create(part_system);


part_type=part_type_create();



part_type_sprite(part_type, spr_shadow, false, false, false);


part_type_alpha2(part_type, 0, 0.2);

part_type_color3(part_type, c_lime, c_black, c_blue);
