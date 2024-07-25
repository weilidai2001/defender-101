// Create Event
view_enabled = true;
view_visible[0] = true;

camera = camera_create();

view_width = 1000;
view_height = 800;

camera_set_view_size(camera, view_width, view_height);
view_set_camera(0, camera);

// Set the viewport size to match the camera size
view_set_wport(0, view_width);
view_set_hport(0, view_height);

player = noone;

// Adjust the window size to match the view size
window_set_size(view_width, view_height);