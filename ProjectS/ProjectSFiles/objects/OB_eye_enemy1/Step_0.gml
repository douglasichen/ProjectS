
if instance_exists(OB_player) && instance_exists(OB_enemy1) {
	image_angle = point_direction(x,y,OB_player.x,OB_player.y)
	
}
if global.ExistsEnemy1 = false {
	instance_destroy()
}
if instance_exists(OB_enemy1) {
	x = OB_enemy1.x ; y = OB_enemy1.y
}
else {
	instance_destroy()
}