draw_sprite_ext( sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha );

var _healthpercent = hp / maxhp;
var _hpimage = _healthpercent * ( sprite_get_number( spr_enemyhp ) - 1);
draw_sprite_ext( spr_enemyhp, _hpimage, x, y - sprite_height - 5, image_xscale, image_yscale, image_angle, image_blend, image_alpha );
