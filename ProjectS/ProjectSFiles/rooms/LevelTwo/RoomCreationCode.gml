//set mouse position to the middle of the window thus setting the position of the player
window_mouse_set(window_get_width()/2, window_get_height()/2)
if instance_exists(OB_player){
	OB_player.x = mouse_x
	OB_player.y = mouse_y

	//set variable back to original number since this is creatation code room, this will restart the variable value and this code is not in OB_player because OB_player is persistent meaning it does not run the creation event again
	OB_player.player_waitTime_endLvl = 384
}

