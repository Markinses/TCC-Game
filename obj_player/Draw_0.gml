//'desenhe' a arma atrás do jogador
if aimdir >= 0 && aimdir < 180
{
	draw_my_weapon();
}

//'desenhar' o jogador
draw_self();


//'desenhar' a arma
if aimdir >= 180 && aimdir < 360
{
	draw_my_weapon();
}
