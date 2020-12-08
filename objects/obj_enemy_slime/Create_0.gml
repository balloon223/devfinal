/// @description Insert description here
// You can write your code in this editor
hp=20;
spd=1;
depth=-1;
foundPlayer=false;
global.numslime++;
isHit=false;
hasRose=irandom_range(0,1);
hitSpeed=5;
hitTimer=1;
delay=5;
audio_play_sound(sound_slimeSpawn,1,0);
image_xscale=2;
image_yscale=2;