draw_sprite_ext( sprite_index, image_index, x, y, 87, 47, 0, c_white, 1);

draw_set_font(fnt_menu);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_color(x+op_border, y+op_bordery, "Como Jogar", c_yellow, c_yellow, c_yellow, c_yellow, 1);

draw_text(x+op_border-180, y+op_bordery+150, "Use");
draw_text_color(x+op_border-100, y+op_bordery+150, "WASD", c_blue, c_blue, c_blue, c_blue, 1);
draw_text(x+op_border, y+op_bordery+150, "para se mover pelo mapa");

draw_text(x+op_border-500, y+op_bordery+200, "Mire pelo mouse e com o");
draw_text_color(x+op_border-100, y+op_bordery+200, "LMB ( Botao esquerdo do mouse )", c_blue, c_blue, c_blue, c_blue, 1);
draw_text(x+op_border+420, y+op_bordery+200, "atire nos inimigos");

draw_text(x+op_border-350, y+op_bordery+250, "E com o ");
draw_text_color(x+op_border-200, y+op_bordery+250, "RMB ( Botao direito do mouse )", c_blue, c_blue, c_blue, c_blue, 1);
draw_text(x+op_border+300, y+op_bordery+250, "troca de armas");

draw_text(x+op_border-75, y+op_bordery+350, "Aqui esta suas armas")

draw_sprite_ext( spr_armas, 0, x+op_border-220, y+op_bordery+350, 4, 4, 0, c_white, 1);

draw_text(x+op_border-190, y+op_bordery+700, "Aperte qualquer tecla para continuar");