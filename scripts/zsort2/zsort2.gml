// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function zsort2(){
if(instance_exists(obj_parent)){
sortballoon=instance_nearest(x,y,obj_parent);
if(sortballoon.y>y){sortballoon.depth=1;}
if(sortballoon.y<y){sortballoon.depth=3;}
}

if(instance_exists(obj_food)){
sortballoon=instance_nearest(x,y,obj_food);
if(sortballoon.y+30>y){sortballoon.depth=1;}
if(sortballoon.y+30<y){sortballoon.depth=3;}
}
}