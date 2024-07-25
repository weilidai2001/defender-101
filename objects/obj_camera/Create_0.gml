// Create Event of obj_camera

view_enabled = true;
view_visible[0] = true;

camera = camera_create();

view_width = 1280;
view_height = 720;

camera_set_view_size(camera, view_width, view_height);
view_set_camera(0, camera);

// Set the viewport size to match the camera size
view_set_wport(0, view_width);
view_set_hport(0, view_height);

player = noone;

// Adjust the window size to match the view size
window_set_size(view_width, view_height);

// Center the window
var display_width = display_get_width();
var display_height = display_get_height();
var window_x = (display_width - view_width) / 2;
var window_y = (display_height - view_height) / 2;
window_set_position(window_x, window_y);

// Ensure the application surface is the correct size
surface_resize(application_surface, view_width, view_height);