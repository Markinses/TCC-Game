alpha += alphaspd;
alpha = clamp( alpha, 0, 1);

unpausekey = keyboard_check_pressed( vk_escape );

if instance_exists(obj_paumenu) && unpausekey == true && alpha == 1
{
	instance_destroy();
}

if instance_exists(obj_paumenu)
{
	obj_player.movespd = 0;
	
	if instance_exists(obj_normalzombie) && instance_exists(obj_paumenu)
	{
		obj_normalzombie.chasespd = 0;
		obj_normalzombie.state = 0;
	}
	if instance_exists(obj_corcundaBOSS) && instance_exists(obj_paumenu)
	{
		obj_corcundaBOSS.chasespd = 0;
		obj_corcundaBOSS.state = 0;
	}
	if instance_exists(obj_ganold) && instance_exists(obj_paumenu)
	{
		obj_ganold.chasespd = 0;
		obj_ganold.state = 0;
	}
	if instance_exists(obj_enemybullet) && instance_exists(obj_paumenu)
	{
		obj_enemybullet.spd = 0;
	}	
	if instance_exists(obj_bossbullet) && instance_exists(obj_paumenu)
	{
		obj_bossbullet.spd = 0;
	}	
	if instance_exists(obj_bossbullet2) && instance_exists(obj_paumenu)
	{
		obj_bossbullet2.spd = 0;
	}
}

if !instance_exists(obj_paumenu)
{
	obj_player.movespd = 8;
	
	if instance_exists(obj_normalzombie) && !instance_exists(obj_paumenu)
	{
		obj_normalzombie.chasespd = 3;
		obj_normalzombie.state = 0;
	}
	if instance_exists(obj_corcundaBOSS) && !instance_exists(obj_paumenu)
	{
		obj_corcundaBOSS.chasespd = 3;
		obj_corcundaBOSS.state = 0;
	}
	if instance_exists(obj_ganold) && !instance_exists(obj_paumenu)
	{
		obj_ganold.chasespd = 3;
		obj_ganold.state = 0;
	}
	if instance_exists(obj_enemybullet) && !instance_exists(obj_paumenu)
	{
		obj_enemybullet.spd = 5;
	}	
	if instance_exists(obj_bossbullet) && !instance_exists(obj_paumenu)
	{
		obj_bossbullet.spd = 5;
	}	
	if instance_exists(obj_bossbullet2) && !instance_exists(obj_paumenu)
	{
		obj_bossbullet2.spd = 5;
	}
}