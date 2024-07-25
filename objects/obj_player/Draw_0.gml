// Draw the player sprite
draw_self();

// If frozen, draw the countdown
if (frozen) {
    draw_set_font(-1); // Use the default font
    draw_set_color(c_yellow);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    
    var countdown_text = string(ceil(freeze_timer));
    
    // Draw the countdown text without background
    draw_text(x, y - sprite_height, countdown_text);
    
    // Reset draw settings
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
    draw_set_color(c_white);
}