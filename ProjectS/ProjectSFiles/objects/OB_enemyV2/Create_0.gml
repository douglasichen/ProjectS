
//when created idle image..
image_index = 0
image_speed = 0
//animaiton
spin = 10 //add a spin
draw_spriteRotation = false
rotation_animation = 0
opacity = 1

//stop speed
stop_radius = 30

//attack vars
attack_radius = 50
//player detection variables
detection_radius = 200
enum states{
	SLEEP = 0,
	IDLE = 1,
	FOLLOW = 2,
	DETECT = 3,
	ATTACK = 4
	
}
state = states.SLEEP

//movement
added_randomDirection = 100

spdAmplificationValue = 70 //this number should only be used as SPD/(100)

//speed
spd = 0

if (instance_exists(OB_player)) {
	distance_to_player = distance_to_point(OB_player.x, OB_player.y)
}


//damage
damage = 0.1