get_damage( obj_damageparent );

if hp <= 0
{
	
	var _lootdrop = random(100);
	if(_lootdrop >= 70) {
		instance_create_layer( x, y, "Instances", obj_cura)
	}
	
	if(_lootdrop <= 5){
		instance_create_layer( x, y, "Instances", obj_normalzombie)
	}
	
	instance_destroy();
	
}
