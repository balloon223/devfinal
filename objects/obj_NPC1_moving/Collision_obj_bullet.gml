/// @description Insert description here
// You can write your code in this editor
TriggerTimer--;
if(TriggerTimer<=0)
{
isTriggered=true;
DetriggerTimer--;
if(DetriggerTimer<=0)
	{
	isTriggered=false;
	}
}