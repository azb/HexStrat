cursorX = 0
cursorY = 0

radiusX = 64;
radiusY = 56;

tileWidth = radiusX * 2
tileHeight = radiusY * 2

selectedObject = -1

canSelect = true
canMove = true

var _dw = display_get_width();
var _dh = display_get_height();
view_wport[0] = _dw;
view_hport[0] = _dh;
camera_set_view_size(view_camera[0], _dw, _dh);
surface_resize(application_surface, _dw, _dh);
window_set_rectangle(0, 0, _dw, _dh);

//ZOOM CONTROLS
target_zoom = 1;        // desired zoom level
current_zoom = 1;       // current zoom level
zoom_speed = 0.05;      // how quickly to interpolate
zoom_min = 0.5;         // max zoom in
zoom_max = 2;           // max zoom out
///////////////