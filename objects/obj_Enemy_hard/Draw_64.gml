draw_sprite(spr_healthbar_background, 0, healthbar_x, healthbar_y);

draw_sprite_stretched(spr_healthbar, 0, healthbar_x, (healthbar_y+healthbar_height)-((hp/maxhp)*healthbar_height), healthbar_width, (hp/maxhp)*healthbar_height);

draw_sprite(spr_healthbar_border, 0, healthbar_x, healthbar_y);
