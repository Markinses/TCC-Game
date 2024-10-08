// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function create_weapon( _sprite = spr_bluerod, _length = 0, _bulletobj = obj_bullet_bluerod , _CD = 1, _bulletsnum = 1, _spread = 0 ) constructor
{
	
	sprite = _sprite;
	length = _length;
	bulletobj = _bulletobj;
	CD = _CD;
	bulletsnum = _bulletsnum;
	spread = _spread;

	
}

global.playerweapons = array_create(0);

global.weaponlist = {

	bluerod : new create_weapon(
		spr_bluerod,
		sprite_get_bbox_right( spr_bluerod ) - sprite_get_xoffset( spr_bluerod ),
		obj_bullet_bluerod,
		24,
		1,
		0
	),
	
	yellowrod : new create_weapon(
		spr_yellowrod,
		sprite_get_bbox_right( spr_yellowrod ) - sprite_get_xoffset( spr_yellowrod ),
		obj_bullet_yellowrod,
		6,
		1,
		0
	),

	pinkrod : new create_weapon(
		spr_pinkrod,	
		sprite_get_bbox_right( spr_pinkrod ) - sprite_get_xoffset( spr_pinkrod ),
		obj_bullet_pinkrod,
		50,
		5,
		45
	),
	
	}
