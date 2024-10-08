get_damage_create( 20, true );


movedir = 0;
movespd = 8;
xspd = 0;
yspd = 0;

//controle de sprite
centerYOffset = -10;
centery = y + centerYOffset;

weaponOffsetDist = 8;
aimdir = 0;

face = 0;
sprite[0] = spr_player00;
sprite[1] = spr_player01;
sprite[2] = spr_player02;
sprite[3] = spr_player03;

shootimer = 0;

array_push( global.playerweapons, global.weaponlist.bluerod );
array_push( global.playerweapons, global.weaponlist.yellowrod );
array_push( global.playerweapons, global.weaponlist.pinkrod );

selectedweapon = 0;
weapon = global.playerweapons[selectedweapon];