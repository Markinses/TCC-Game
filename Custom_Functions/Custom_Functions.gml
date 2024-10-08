function draw_my_weapon()
{

	//'desenhar' a arma
	//tirar a arma do corpo do jogador
	var _xOffset = lengthdir_x( weaponOffsetDist, aimdir );
	var _yOffset = lengthdir_y( weaponOffsetDist, aimdir );

	//virar a arma para cima e para baixo
	var _weaponyscl = 1;
	if aimdir > 90 && aimdir < 270
	{
		_weaponyscl = -1;
	}

	draw_sprite_ext( weapon.sprite, 0, x + _xOffset, centery + _yOffset, 1, _weaponyscl, aimdir, c_white, image_alpha );

}

function get_damage_create( _hp = 10, _iframes = false )
{
	maxhp = _hp;
	hp = _hp;
	
	if _iframes == true
	{
		
		iframestimer = 0;
		iframenumber = 90;
		
	}
	
	if _iframes == false
	{
		
		damageList = ds_list_create();
		
	}
}

function get_damage_cleanup()
{
	
	ds_list_destroy(damageList);
	
}

function get_damage( _damageObj, _iframes = false )
{

	if _iframes == true && iframestimer > 0
	{
		iframestimer--;
		
		if iframestimer mod 5 == 0
		{
			if image_alpha == 1
			{
				image_alpha = 0;
			} else {
				image_alpha = 1;
			}
		}
		
		hp = clamp( hp, 0, maxhp );
		
		exit;
		
		if _iframes == true
		{
			image_alpha = 1;
		}
	}

	if place_meeting( x, y, _damageObj )
	{
	
		var _instList = ds_list_create();
	
		instance_place_list( x, y, _damageObj, _instList, false );
	
		var	_listsize = ds_list_size( _instList);
	
		var _hitconfirm = false;
	
		for( var i = 0; i < _listsize; i++ )
		{
		
			var _inst = ds_list_find_value( _instList, i );
		
			if _iframes == true || ds_list_find_index( damageList, _inst ) == -1
			{
				if _iframes == false
				{
					
					ds_list_add( damageList, _inst );
			
				}
				
				hp -= _inst.damage;
				_hitconfirm = true
		
				_inst.hitConfirm = true;
		
			}
		
		}
		
		if _iframes == true && _hitconfirm == true
		{
			iframestimer = iframenumber;
		}
	
		ds_list_destroy( _instList );
	
	}

	if _iframes == false
	{
	
		var _damageListSize = ds_list_size(damageList);
		for( var i = 0; i < _damageListSize; i++ )
		{
	
			var _inst = ds_list_find_value( damageList, i );
	
			if !instance_exists( _inst ) || !place_meeting( x, y, _inst )
			{
		
				ds_list_delete( damageList, i );
		
				i--;
		
				_damageListSize--;
		
			}
	
		}
		
	}
	
	hp = clamp( hp, 0, maxhp );
	
}
