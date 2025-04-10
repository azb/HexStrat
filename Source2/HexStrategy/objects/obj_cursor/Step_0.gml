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

x = radiusX + cursorX * radiusX * 1.5
y = radiusY + cursorY * (radiusY * 2)

if ((cursorX+1) % 2 == 0)
{
	y += radiusY
}
