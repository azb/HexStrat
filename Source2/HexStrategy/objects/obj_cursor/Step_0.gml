//x += gamepad_axis_value(0,gp_axislh)


if (canMove)
{
	var controlX = control_x();
	var controlY = control_y();
	
    // Move Left
    if controlX < -.2
    {
        cursorX--;
        canMove = false
        alarm[1] = 7 / -controlX
    }
    
    // Move Right
    if controlX > .2
    {
        cursorX++;
        canMove = false
        alarm[1] = 7 / controlX
    }
    
    // Move Up
    if controlY < -.2
    {
        cursorY--;
        canMove = false
        alarm[1] = 7 / -controlY
    }
    
    // Move Down
    if controlY > .2
    {
        cursorY++;
        canMove = false
        alarm[1] = 7 / controlY
    }
}

var tx = radiusX + cursorX * radiusX * 1.5;
var ty = radiusY + cursorY * (radiusY * 2);

if ((cursorX+1) % 2 == 0)
{
	ty += radiusY
}

x = (x + tx) / 2
y = (y + ty) / 2

//view_xview[0] = x - view_wview[0]/2
//view_yview[0] = y - view_hview[0]/2

// Example: Center the camera on an object (e.g. the player)

if (view_camera[0] != -1)
{
    var cam = view_camera[0];
    var cam_x = camera_get_view_x(cam);
    var cam_y = camera_get_view_y(cam);

    if (keyboard_check(ord("A"))) cam_x -= 5;
    if (keyboard_check(ord("D"))) cam_x += 5;
    if (keyboard_check(ord("W"))) cam_y -= 5;
    if (keyboard_check(ord("S"))) cam_y += 5;
	
	cam_x += control_view_x()
	cam_y += control_view_y()

    camera_set_view_pos(cam, cam_x, cam_y);
}
