//exit game room when player is dead
if room != 0{
	if (leave_time < 1 && global.playerdeath = true) {
	game_restart()
	}
	if global.playerdeath = true {
		leave_time -= 1
	}
}

//room change
if keyboard_check_pressed(vk_space) && room !=room_last{
	room_goto_next()
}
else if keyboard_check_pressed(vk_space) && room = room_last{
	game_restart()
}


//restart game and room
if keyboard_check_pressed(ord("R")) room_restart()
if keyboard_check_pressed(ord("R")) && keyboard_check(vk_lshift) game_restart()


//test
if keyboard_check(ord("K")) {
	instance_create_layer(random(room_width),random(room_height),layer,OB_xp_enemy1)
	instance_create_layer(random(room_width),random(room_height),layer,OB_xp_enemy1)
	instance_create_layer(random(room_width),random(room_height),layer,OB_xp_enemy1)
	instance_create_layer(random(room_width),random(room_height),layer,OB_xp_enemy1)
	instance_create_layer(random(room_width),random(room_height),layer,OB_xp_enemy1)
	
}





