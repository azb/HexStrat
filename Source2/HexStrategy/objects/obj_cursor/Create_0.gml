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

