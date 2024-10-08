var _camx = camera_get_view_x( view_camera[0] );
var _camw = camera_get_view_width( view_camera[0] );
var _camy = camera_get_view_y( view_camera[0] );
var _camh = camera_get_view_height( view_camera[0] );

draw_set_alpha( alpha*alphamax );
draw_rectangle_color( _camx, _camy, _camx + _camw, _camy + _camh, c_black, c_black, c_black, c_black, false);
draw_set_alpha( 1 );

draw_set_halign( fa_center );
draw_set_valign( fa_middle );
draw_set_alpha( alpha );
draw_set_font( fnt_gameover );

var _gameoveroffset = -150;
draw_text_transformed_color( _camx + _camw/2, _camy + _camh/2 + _gameoveroffset, "You Died", 9, 9, 0, colortext, colortext, colortext, colortext, true);

var _restartoffset = 200;
draw_text_transformed( _camx + _camw/2, _camy + _camh/2 + _restartoffset, "- Press R to restart -", 2, 2, 0 );

draw_set_halign( fa_left );
draw_set_valign( fa_top );
draw_set_alpha( 1 );
