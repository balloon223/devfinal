zsort();
if(x<0)
{instance_destroy(self);}
if(x>room_width)
{instance_destroy(self);}
if(y<0)
{instance_destroy(self);}
if(y>room_height)
{instance_destroy(self);}



if(instance_exists(obj_wall))
{
wall=instance_nearest(x,y,obj_wall);
if(y-100<wall.y)
	{
	depth=100;
	}
}