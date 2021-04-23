var mx = mouse_x; var my = mouse_y;
if (instance_exists(button)) {
	if (mx < button.bbox_right && mx > button.bbox_left &&
		my < button.bbox_bottom && my > button.bbox_top) {
		if (mouse_check_button_pressed(mb_left)) {
			pressed = true;
		}
		if (mouse_check_button_released(mb_left) && pressed == true) {
			audio_play_sound(SN_select2, 1, false)	//play sound
			room = room + 1
		}
		button.image_index = 1
	}
	else {
		pressed = false
		button.image_index = 0
	}
}
else {
	pressed = false
}