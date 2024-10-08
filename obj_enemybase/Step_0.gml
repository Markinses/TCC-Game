//tomar dano

get_damage( obj_damagedenemy )

if hp <= 0
{
	global.enemyKillCount++;
	
	var _lootdrop = random(100);
	if(_lootdrop >= 90) {
		instance_create_layer( x, y, "Instances", obj_cura)
	}
	instance_destroy()
}