//animate idle according to health
if hitpoint = 4 {
	image_angle += 10           
}
if hitpoint = 3 {
	image_angle += 7
}
if hitpoint = 2 {
	image_angle += 4
}
if hitpoint = 1 {
	image_angle += 1
}
//shoot projectile
cooldown_projectile -= 1
if(instance_exists(OB_player) && cooldown_projectile <= 0) {
	instance_create_layer(self.x,self.y,"Bullets",OB_projectile_enemy1)
	//increase cooldown if enemy is more damaged
	if (hitpoint = 4)cooldown_projectile = 120
	if (hitpoint = 3)cooldown_projectile = 120
	if (hitpoint = 2)cooldown_projectile = 120
	if (hitpoint = 1)cooldown_projectile = 120
}
//health animation
if (hitpoint = 4) image_index = 0
if (hitpoint = 3) image_index = 1
if (hitpoint = 2) image_index = 2
if (hitpoint = 1) image_index = 3
//switch to dead object 
if (hitpoint = 0) {//&& global.ExistsEnemy2 = false { 
	instance_change(OB_dead_enemy,true)//true? means is the new object going to run its create and destroy events
	global.ExistsEnemy1 = false //*
	path_end()	
}
/*
else if hitpoint = 0 && global.ExistsEnemy2 = true{
	instance_destroy()
}
*/


