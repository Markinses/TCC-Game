if keyboard_check_pressed( vk_anykey ) && !keyboard_check( vk_alt ) && !keyboard_check( vk_control ) && !keyboard_check( vk_tab )
{
	room_goto_next();
}