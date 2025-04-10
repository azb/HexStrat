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