draw_sprite_ext( sprite_index, image_index, x, y, face, image_yscale, image_angle, image_blend, image_alpha );

var _healthpercent = hp / maxhp;
var _hpimage = _healthpercent * ( sprite_get_number( spr_bosshp ) - 1);
draw_sprite_ext( spr_bosshp, _hpimage, x, y - sprite_height + 60, image_xscale, image_yscale, image_angle, image_blend, image_alpha );
