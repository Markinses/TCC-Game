xspd = lengthdir_x( spd, dir );
yspd = lengthdir_y( spd, dir);

x += xspd
y += yspd

if hitConfirm == true && enemyDestroy == true { destroy = true; };

if destroy == true { instance_destroy(); };

if place_meeting( x, y, obj_solidwall) { destroy = true; };

if point_distance( xstart, ystart, x, y ) > maxdist { destroy = true; };
