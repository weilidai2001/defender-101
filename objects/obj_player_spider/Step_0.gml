// Horizontal movement
if (keyboard_check(ord("D"))) {
    x += move_speed; // move right
}
if (keyboard_check(ord("A"))) {
    x -= move_speed; // move left
}

// Vertical movement
if (keyboard_check(ord("S"))) {
    y += move_speed; // move down
}
if (keyboard_check(ord("W"))) {
    y -= move_speed; // move up
}