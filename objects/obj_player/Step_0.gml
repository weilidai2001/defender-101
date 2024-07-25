// Check if player is colliding with web
var web = instance_place(x, y, obj_web);
if (web != noone && !frozen) {
    frozen = true;
    freeze_timer = freeze_duration;
    current_web = web; // Remember this web instance
}

// Handle frozen state and timer
if (frozen) {
    freeze_timer -= delta_time / 1000000; // Convert microseconds to seconds
    if (freeze_timer <= 0) {
        frozen = false;
        // Destroy the web that froze the player
        if (instance_exists(current_web)) {
            instance_destroy(current_web);
        }
        current_web = noone;
    }
}

// Only process movement if not frozen
if (!frozen) {
    // Get Player Input
    key_left = keyboard_check(vk_left);
    key_right = keyboard_check(vk_right);
    key_jump = keyboard_check_pressed(vk_up) || mouse_check_button(mb_right);

    // Calculate movement
    var move = key_right - key_left;

    hsp = move * walksp;

    vsp = vsp + grv;

    if (place_meeting(x,y+1, obj_wall)) && (key_jump) {
        vsp = -12;	
    }

    // Horizontal Collision
    if (place_meeting(x+hsp, y, obj_wall)){
        while (!place_meeting(x+sign(hsp), y, obj_wall)){
            x = x + sign(hsp);
        }
        hsp = 0;
    }

    x = x + hsp;

    // Vertical Collision
    if (place_meeting(x, y+vsp, obj_wall)){
        while (!place_meeting(x, y+sign(vsp), obj_wall)){
            y = y + sign(vsp);
        }
        vsp = 0;
    }

    y = y + vsp;
} else {
    // If frozen, stop all movement
    hsp = 0;
    vsp = 0;
}
