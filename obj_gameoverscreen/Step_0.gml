alpha += alphaspd;
alpha = clamp( alpha, 0, 1);

restartkey = keyboard_check_pressed( ord("R") );

if restartkey && alpha >= 1
{
	room_restart();	
}