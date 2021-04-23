//look at player
if instance_exists(OB_player) && instance_exists(OB_enemy2) {
	image_angle = point_direction(x,y,OB_player.x,OB_player.y)
	
}
//lock to enemy centre and destroy wen enemy dead
if global.enemy2dead = true {
	instance_destroy()
}
if instance_exists(OB_enemy2) {
	x = OB_enemy2.x ; y = OB_enemy2.y
}
else {
	instance_destroy()
}