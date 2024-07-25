/// @description Display web cooldown
draw_self();
if (cooldown > 0) {
    var timer_text = string(ceil(cooldown / room_speed));
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    if (cooldown_font != -1) {
        draw_set_font(cooldown_font);
    }
    draw_text(x, y - sprite_height/2 - 10, timer_text);
    draw_set_halign(fa_left);
    draw_set_valign(fa_top);
}