image_xscale-=(sb_p1.speed/2000);
image_yscale-=(sb_p1.speed/2000);
image_alpha-=(sb_p1.speed/500);
if image_alpha<0 then instance_destroy();
