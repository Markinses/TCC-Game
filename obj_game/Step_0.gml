pausekey = keyboard_check_pressed( vk_escape );

if instance_exists(obj_player) && pausekey == true && !instance_exists(obj_paumenu)
{
	instance_create_layer(x, y, "Instances", obj_paumenu);	
}

