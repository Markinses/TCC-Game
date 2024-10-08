room_goto( _targetroom );
obj_player.x = _targetx;
obj_player.y = _targety;

if !instance_exists(obj_transition) {
		var _inst =  instance_create_layer( x, y, "Instances", obj_transition );
}