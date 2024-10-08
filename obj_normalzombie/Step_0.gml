var _wallcollision = true;
var _getdamage = true;
 
switch( state )
{
	case -1:
	#region spawn
	
		if image_alpha < 1
		{
			spd = 0;
			image_alpha += fadespd;
		}
		
		_wallcollision = false;
		_getdamage = false;	
		
		if image_alpha >= 1
		{
			spd = spawnspd;
			dir = 270;
		}
		
		if !place_meeting( x, y, obj_wall )
		{
			state = 0;
		}
		
	#endregion
	break;
	
	case 0:
	#region perseguir
		if instance_exists( obj_player )
		{
			dir = point_direction( x, y, obj_player.x, obj_player.y );
		}

		spd = chasespd;
		
		var _camleft = camera_get_view_x( view_camera[0] );
		var _camright = _camleft + camera_get_view_width( view_camera[0] );
		var _camtop = camera_get_view_y( view_camera[0] );
		var _cambottom = _camtop + camera_get_view_height( view_camera[0] );
		
		if bbox_right > _camleft && bbox_left < _camright && bbox_bottom > _camtop && bbox_top < _cambottom
		{
			shootimer++;
		}
		
		if shootimer > cooldowntimer
		{
		
			state = 1;
			
			shootimer = 0;
		
		}
	#endregion
	break;
	
	case 1:
	#region atirar
	
		if instance_exists( obj_player )
		{
			dir = point_direction( x, y, obj_player.x, obj_player.y );
		}

		spd = 0;
		
		image_index = 0;
		
		shootimer++;
		
		if shootimer == 1
		{
			bulletinst = instance_create_depth( x + bulletxoff*face, y + bulletyoff, depth, obj_enemybullet);
		}
		
		if shootimer <= winduptime && instance_exists( bulletinst )
		{
			bulletinst.x = x + bulletxoff*face;
			bulletinst.y = y + bulletyoff;
		}
		
		if shootimer == winduptime && instance_exists( bulletinst )
		{
			bulletinst.state = 1;
		}
		
		if shootimer > winduptime + recovertime
		{
			state = 0;
			
			shootimer = 0;
		}
	
	#endregion
	break;
}


xspd = lengthdir_x( spd, dir );
yspd = lengthdir_y( spd, dir );

if dir > 90 && dir < 270
{
	face = -1;
} else {
	face = 1;	
}

	if _wallcollision == true
	{
		if place_meeting( x + xspd, y, obj_wall ) { xspd = 0; }
		if place_meeting( x, y + yspd, obj_wall ) { yspd = 0; }
	}
	
	if place_meeting( x + xspd, y, obj_enemybase ) { xspd = 0; }
	if place_meeting( x, y + yspd, obj_enemybase ) { yspd = 0; }

x += xspd;
y += yspd;

depth = -y;

if _getdamage == true
{
	
	event_inherited();
}
