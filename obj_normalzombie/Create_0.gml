event_inherited();

get_damage_create(15);

spd = 0;
chasespd = 3;
dir = 0;
xspd = 0;
yspd = 0;

face = 1;

state = 0;

fadespd = 1/15;
spawnspd = 1;

cooldowntimer = 360;
shootimer = irandom( cooldowntimer );
winduptime = 60;
recovertime = 45;
bulletinst = noone;

bulletxoff = 17;
bulletyoff = -35;