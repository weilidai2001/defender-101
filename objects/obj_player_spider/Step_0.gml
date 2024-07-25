// Get Player Input
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W"));

// Calculate movement
var move = key_right - key_left;

hsp = move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1, obj_wall)) && (key_jump) {
    vsp = -12;	
}

// Get camera information
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

// Horizontal Movement and Collision
if (place_meeting(x+hsp, y, obj_wall)){
    while (!place_meeting(x+sign(hsp), y, obj_wall)){
        x = x + sign(hsp);
    }
    hsp = 0;
}

// Apply horizontal movement and restrict to camera
var new_x = x + hsp;
new_x = max(new_x, cam_x);
new_x = min(new_x, cam_x + cam_w - sprite_width);
x = new_x;

// Vertical Movement and Collision
if (place_meeting(x, y+vsp, obj_wall)){
    while (!place_meeting(x, y+sign(vsp), obj_wall)){
        y = y + sign(vsp);
    }
    vsp = 0;
}

// Apply vertical movement and restrict to camera
var new_y = y + vsp;
new_y = max(new_y, cam_y);
new_y = min(new_y, cam_y + cam_h - sprite_height);
y = new_y;

// Cool down
if (cooldown > 0) {
    cooldown -= 1;
}
