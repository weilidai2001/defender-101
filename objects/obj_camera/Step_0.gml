// Step Event
// Try to find the player if we don't have a reference to it
if (player == noone) {
    player = instance_find(obj_player, 0);
}

if (player != noone && instance_exists(player)) {
    var view_x = clamp(player.x - view_width/2, 0, room_width - view_width);
    var view_y = clamp(player.y - view_height/2, 0, room_height - view_height);
    
    var current_x = camera_get_view_x(camera);
    var current_y = camera_get_view_y(camera);
    
    var new_x = lerp(current_x, view_x, 0.1);
    var new_y = lerp(current_y, view_y, 0.1);
    
    camera_set_view_pos(camera, new_x, new_y);
} else {
    // If player doesn't exist, reset the player reference
    player = noone;
}