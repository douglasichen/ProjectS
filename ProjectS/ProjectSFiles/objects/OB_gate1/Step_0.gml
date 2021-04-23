//animation with rotation
image_angle +=10
//alpha
if (image_alpha) < 1{
	image_alpha += 0.005 //increase alpha to make it visible in the game
}
//when the image alpha(opacity) is 100%, start counting down the nextLevelEntryTimer
if (image_alpha) = 1 && NextLevelEntryTime > 0{
	NextLevelEntryTime -= 1
}
if (NextLevelEntryTime = 0){
	global.EnterNextLevel = true //var created in OB_player create event & will be run in OB_player step event
}

//shake screen functions
if shake = true && room_shake_radius > 0{ // only shake if shake radius is greater than 0 because, when shaek is set to false i dont want to stop the shaking, i want to slow it down to give off a natural transition
	var ran_x = random_range(-room_shake_radius,room_shake_radius)
	var ran_y = random_range(-room_shake_radius,room_shake_radius)
	camera_set_view_pos(view_camera[0],view_x+ran_x,view_y+ran_y)
	
	view_x = camera_get_view_x(view_camera[0])//set the camera back to natural position, so it does not glitch when camera is moving or following the player
	view_y = camera_get_view_y(view_camera[0])
}
else if shake = false{ // if shake is set to false then slow the shake down
	room_shake_radius -= 0.01
}
//when room_shake_radius = 0, lock to original position
if room_shake_radius <= 0{ // if the shaking radius is 0 meaning it is finished slowing down, lock the camera view to its original state
	camera_set_view_pos(view_camera[0],0,0)
}

