if(global.numslime<2)
	{
	timer--;
	if(timer<=0){
	instance_create_layer(random_range(300, 1000),random_range(300, 1000),"Instances",obj_enemy_slime_spawn);
	timer=300;
	}
	}

if(obj_player.x>3100)
	{
	if(obj_player.y>2870)
		{
		instance_create_layer(2960,2860,"Instances",obj_wall);
		}
	}
	
