// Apply gravity
vsp = vsp + grv;

// Horizontal movement
hsp = move_dir * 2; // Use move_dir to determine direction

// Horizontal Collision
if (place_meeting(x + hsp, y, obj_wall)) {
    // Move as close to the wall as possible
    while (!place_meeting(x + sign(hsp), y, obj_wall)) {
        x = x + sign(hsp);
    }
     
	hsp = 0;
	move_dir *= -1;
}

x = x + hsp;

// Vertical Collision
if (place_meeting(x, y + vsp, obj_wall)) {
    while (!place_meeting(x, y + sign(vsp), obj_wall)) {
        y = y + sign(vsp);
    }
    vsp = 0;
}

y = y + vsp;

// Collision Event with obj_mob_spider
if (place_meeting(x + hsp, y, obj_mob_spider)) {
    // Change direction
    move_dir *= -1;
    hsp = move_dir * 2; // Immediately apply new direction and speed
    
    // Move a bit away to prevent getting stuck
    x += move_dir * 2;
}