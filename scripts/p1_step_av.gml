image_angle=/*(direction+270)*/2*hspeed;
//if keyboard_check(vk_left)=true
//then {direction=direction+1};
if keyboard_check(vk_left)&& jump=0 then hspeed-=.4;
if keyboard_check(vk_right) && jump=0 then hspeed+=.4;
if hspeed>=10 then hspeed=10;
if hspeed<=-10 then hspeed=-10;
if speed>0 then {instance_create(x,y,obj_FXslideP1);}

if jump=0 {depth=0; repeat (speed) {instance_create(x,y,obj_snowdust);}}

if jump=1 {image_xscale+=.05;depth=-1000;image_yscale+=.05;}
if jump=2 {image_xscale-=.05;depth=-1000;image_yscale-=.05;}
if image_xscale>=1 {jump=2;}
if image_xscale<=.2 {jump=0;image_xscale=.2;image_yscale=.2;}

if hspeed>obj_LvlControl.AvaSpeed && hspeed>0 {hspeed=obj_LvlControl.AvaSpeed;}
if hspeed>obj_LvlControl.AvaSpeed && hspeed<0 {hspeed=-obj_LvlControl.AvaSpeed;}
