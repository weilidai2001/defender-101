// Step Event of obj_mob_spider
if (!place_meeting(x + lengthdir_x(speed, direction), y + lengthdir_y(speed, direction), obj_wall)) {
    // Move in the current direction
    x += lengthdir_x(speed, direction);
    y += lengthdir_y(speed, direction);
} else {
    // Change direction if there's a collision
    direction += 180; // Turn around (180 degrees)
}