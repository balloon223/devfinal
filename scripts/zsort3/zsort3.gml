// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function zsort3(){
//Z-sorting of bushes and NPCs
sortBush=instance_nearest(x,y,obj_bush);




if(instance_exists(obj_player)){
sortNPC2=instance_nearest(x,y,obj_player);
if(sortNPC2.y>y){sortNPC2.depth=1;}
if(sortNPC2.y<y){sortNPC2.depth=3;}
}
if(instance_exists(obj_NPC1)){
sortNPC1=instance_nearest(x,y,obj_NPC1);
if(sortNPC1.y>y){sortNPC1.depth=1;}
if(sortNPC1.y<y){sortNPC1.depth=3;}
}
else if(instance_exists(obj_NPC1_moving)){
sortNPC1mov=instance_nearest(x,y,obj_NPC1_moving);
if(sortNPC1mov.y>y){sortNPC1mov.depth=1;}
if(sortNPC1mov.y<y){sortNPC1mov.depth=3;}
}
if(instance_exists(obj_NPC2)){
sortNPC2=instance_nearest(x,y,obj_NPC2);
if(sortNPC2.y>y){sortNPC2.depth=1;}
if(sortNPC2.y<y){sortNPC2.depth=3;}
if(sortBush.y+100>y){depth=3;}
if(sortBush.y+100<y){depth=1;}
}

}