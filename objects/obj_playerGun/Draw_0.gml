/// @description Insert description here
// You can write your code in this editor
if(!isHit){
 switch(aniFace){
  case 0:
  if(moving=true){
  sprite_index=spr_playerGun_moveUp;
  }
  else{
  sprite_index=spr_playerGun_faceUp;
  }
  if(attacking){sprite_index=spr_playerGun_moveUp_attack;}
  break;
  
  case 1:
  if(moving=true){
  sprite_index=spr_playerGun_moveLeft;
  image_xscale=1;facing=-1;
  }
  else{
  sprite_index=spr_playerGun_faceLeft;
  image_xscale=1;facing=-1;
  }
  if(attacking){sprite_index=spr_playerGun_moveLeft_attack;image_xscale=-1;}
  
  break;
  
  case 2:
  if(moving=true){
  sprite_index=spr_playerGun_moveDown;
  }
  else{
  sprite_index=spr_playerGun_faceDown;
  }
  if(attacking){sprite_index=spr_playerGun_attack;}
  break;
  
  case 3:
  if(moving=true){
  sprite_index=spr_playerGun_moveLeft;
  image_xscale=-1;facing=1;
  }
  else{
  sprite_index=spr_playerGun_faceLeft;
  image_xscale=-1;facing=1;
  }
  if(attacking){sprite_index=spr_playerGun_moveRight_attack;}
   
  break;
 }
 draw_self();
 }
else{
 gpu_set_fog(true, c_red, 0, 0);
 draw_self();
 gpu_set_fog(false, c_red, 0, 0);
 }
/* 
if(!hit){draw_self();}
else{
 gpu_set_fog(true, c_red, 0, 0);
 draw_self();
 gpu_set_fog(false, c_red, 0, 0);
 }