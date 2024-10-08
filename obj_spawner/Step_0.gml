timer++

if instance_number( obj_enemybase ) >= global.activeEnemyMax || global.totalEnemiesSpawned >= global.enemyRoomMax
{
	timer = 0;
}

if timer >= spawntime && !place_meeting( x, y, obj_normalzombie )
{
	var _inst = instance_create_depth( x, y, depth-1, obj_normalzombie );
	with(_inst)
	{
		image_alpha = 0;
		state = -1;
	}
	
	timer = 0;
}

