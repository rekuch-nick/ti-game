draw_self();

draw_set_alpha(.5);
draw_sprite_stretched(col, 0, x+10, y+15, 100, 100);
draw_sprite_stretched(col, 0, x+390, y+15, 100, 100);
draw_sprite_stretched(col, 0, x+780, y+15, 100, 100);
draw_set_alpha(1);

draw_set_halign(fa_center);
draw_text_transformed(x + 450, y, nam, 2, 2, 0);
draw_set_halign(fa_left);

draw_text_transformed(x + 10, y + 40, desc, 1.2, 1.2, 0);