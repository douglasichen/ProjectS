//run the script for trail for step event
SC_StepTrail()
//---------------------------------------------------------------------------------


//animate
image_angle += 30
speed = 5

//destroy bullet when all enemys are dead
if global.ExistsEnemy1 = false && global.ExistsEnemy2 = false{
	instance_destroy()
}
