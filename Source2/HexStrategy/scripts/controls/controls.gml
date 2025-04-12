function select_button_pressed(){
	return (keyboard_check_released(vk_enter) 
	|| gamepad_button_check_pressed(0,gp_face1));
}

function control_x(){
	
	var xval = 0;
	
	if keyboard_check(vk_left) 
		xval = -1;
		
	if keyboard_check(vk_right) 
		xval = 1;
	
	if (gamepad_is_connected(0))
	{
		if (gamepad_button_check_pressed(0, gp_padl))
		{
			xval = -1;
		}
		if (gamepad_button_check_pressed(0, gp_padr))
		{
			xval = 1;
		}
		xval += gamepad_axis_value(0,gp_axislh)
	}
		
	return xval;
}

function control_y(){
	
	var yval = 0;
	
	if keyboard_check(vk_up) 
		yval = -1;
		
	if keyboard_check(vk_down) 
		yval = 1;
	
	if (gamepad_is_connected(0))
	{
		if (gamepad_button_check_pressed(0, gp_padu))
		{
			yval = -1;
		}
		if (gamepad_button_check_pressed(0, gp_padd))
		{
			yval = 1;
		}
		yval += gamepad_axis_value(0,gp_axislv)
	}
		
	return yval;
}

function control_view_x()
{
	var xval = 0;
	xval += gamepad_axis_value(0,gp_axisrh)
	if (abs(xval) < .2)
		xval = 0;
	return xval;
}

function control_view_y()
{
	var yval = 0;
	yval += gamepad_axis_value(0,gp_axisrv)
	if (abs(yval) < .2)
		yval = 0;
	return yval;
}

function zoom_out()
{
	var zval = 0;
	if gamepad_button_check(0, gp_shoulderrb)
	zval = 1;
	return zval;
}

function zoom_in()
{
	var zval = 0;
	if gamepad_button_check(0, gp_shoulderlb)
	zval = -1;
	return zval;
}

