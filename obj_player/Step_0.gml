rightkey = keyboard_check( ord( "D" ) );
leftkey = keyboard_check( ord( "A" ) );
upkey = keyboard_check( ord( "W" ) );
downkey = keyboard_check( ord( "S" ) );
shootkey = mouse_check_button( mb_left );
swapkey = mouse_check_button_pressed( mb_right );

#region movimento

	var _horizkey = rightkey - leftkey;
	var _vertkey = downkey - upkey;
	movedir = point_direction( 0, 0, _horizkey, _vertkey );

	var _spd = 0 
	var _inputlevel = point_distance( 0, 0, _horizkey, _vertkey );
	_inputlevel = clamp( _inputlevel, 0, 1 );
	_spd = movespd * _inputlevel;
	
	xspd = lengthdir_x( _spd, movedir );
	yspd = lengthdir_y( _spd, movedir );

	if place_meeting( x + xspd, y, obj_wall )
	{
	  xspd = 0;
	}
	if place_meeting( x , y + yspd, obj_wall )
	{
      yspd = 0;
	}	
	
	if instance_exists(obj_transition)
	{
		xspd = 0;
		yspd = 0;
	}

	x += xspd;
	y += yspd;
	
	depth = -bbox_bottom;
#endregion

#region danos

get_damage(obj_damageplayer, true);

#endregion

#region mira
centery = y + centerYOffset;

//mira
aimdir = point_direction( x, centery, mouse_x, mouse_y );
#endregion

#region sprite 
face = round( aimdir/90 );
if face == 4 { face = 0; };

if xspd == 0 && yspd == 0
{
	image_index = 0;
}

mask_index = sprite[3];
sprite_index = sprite[face];
#endregion

#region troca de armas
var _playersweapons = global.playerweapons;

if swapkey
{
	
	selectedweapon++;
	if selectedweapon >=  array_length(_playersweapons) { selectedweapon = 0; };
	
	weapon = _playersweapons[selectedweapon];
	
}

#endregion

#region atirar
if shootimer > 0
{ 
	shootimer--;
}

if shootkey && shootimer <= 0
{
	
	shootimer = weapon.CD;
	
	var _xOffset = lengthdir_x( weapon.length + weaponOffsetDist, aimdir );
	var _yOffset = lengthdir_y( weapon.length + weaponOffsetDist, aimdir );
	
	var _spread = weapon.spread;
	var _spreadDiv = _spread / max ( weapon.bulletsnum-1, 1 );
	
	for ( var i = 0; i < weapon.bulletsnum; i++ )
	{
	
		var _bulletinst = instance_create_depth( x + _xOffset, centery + _yOffset, depth-100, weapon.bulletobj );
		
		with( _bulletinst )
		{
			dir = other.aimdir - _spread/2 + _spreadDiv*i;
			
			if dirfix == true
			{
				image_angle = dir;
			}
		}
	}
}
#endregion

#region morrer
if hp <= 0
{
	instance_create_depth( 0, 0, -10000, obj_gameoverscreen );
	
	instance_destroy();
}
#endregion