var _camx = camera_get_view_x( view_camera[0] );
var _camy = camera_get_view_y( view_camera[0] );

var _border = 8;
var _hudx = _camx + _border;
var _hudy = _camy + _border;

if instance_exists( obj_player )
{
	draw_sprite( spr_playerhp, 0, _hudx, _hudy );

	for( var i = 0; i < playermaxhp; i++ )
	{
		var _img = 1;
		if i+1 <= playerhp { _img = 2; };
	
		var _sep = 8;
		draw_sprite( spr_playerhp, _img, _hudx + _sep*i, _hudy );
	}
	
	var _enemycountoffset = 66;
	var _echudx = _hudx;
	var _echudy = _hudy + _enemycountoffset;
	
	
	draw_sprite( spr_killcount, 0, _echudx, _echudy);

	draw_set_halign( fa_left );
	draw_set_valign( fa_top );
	draw_set_font( fnt_hud );

	draw_text( _echudx + 70, _echudy + 25, string(global.enemyKillCount) );
	draw_text( _echudx + 135, _echudy + 25, string(global.enemyRoomMax) );

	
	if instance_exists( obj_bossbase )
	{
		draw_sprite( spr_killboss, 0, _echudx, _echudy);

		draw_set_halign( fa_left );
		draw_set_valign( fa_top );
		draw_set_font( fnt_hud );

		draw_text( _echudx + 70, _echudy + 25, string(global.bossKillCount) );
		draw_text( _echudx + 135, _echudy + 25, string(global.bossRoomMax -1 ) );
	}
	
}

