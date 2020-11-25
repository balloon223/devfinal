/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_playerGun)){
if(instance_exists(particle)){

part_type_alpha3(part_type, 0, 0.2, 0);
part_emitter_region(part_system, part_emitter, particle.x, particle.x, particle.y, particle.y, ps_shape_ellipse, ps_distr_linear);


	}

else
	{
	part_emitter_clear(part_system,0);
	}


part_emitter_burst(part_system, part_emitter, part_type, 5);
}