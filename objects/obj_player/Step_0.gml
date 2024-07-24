// Horizontal movement
if (keyboard_check(vk_right)) {
    x += move_speed; // move right
}
if (keyboard_check(vk_left)) {
    x -= move_speed; // move left
}

// Vertical movement
if (keyboard_check(vk_down)) {
    y += move_speed; // move down
}
if (keyboard_check(vk_up)) {
    y -= move_speed; // move up
}