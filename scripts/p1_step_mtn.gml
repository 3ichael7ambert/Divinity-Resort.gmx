image_angle = direction+90;
if keyboard_check(vk_left) then direction+=1;
if keyboard_check(vk_right) then direction-=1;
if keyboard_check(vk_up) then speed+=0.1;
if speed>0 then {instance_create(x,y,obj_FXslideP1);}

repeat (speed) {instance_create(x,y,obj_snowdust);}
