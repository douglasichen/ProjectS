if instance_exists(OB_player) {
	//always follow the player's centre because the origin of both objects are in the centre
	//x = OB_player.x; y = OB_player.y 
	//scale to the player's size
	image_xscale = OB_player.image_xscale
	image_yscale = OB_player.image_yscale
}


speed = spd
direction = point_direction(x,y,OB_mouse.x,OB_mouse.y)

if keyboard_check(ord("X")){
	
	if spd < maxSpd {
		spd+= .2		
	}
	
	if place_meeting(x,y,OB_mouse) { // fix the player from stuttering when the mouse is hovering the player
		if spd > minSpd{
			spd = point_distance(x,y,OB_mouse.x,OB_mouse.y)/7
		}
	}

} 
else {

	
	if place_meeting(x,y,OB_mouse) { // fix the player from stuttering when the mouse is hovering the player
		if spd > minSpd{
			spd = point_distance(x,y,OB_mouse.x,OB_mouse.y)/7
		}
	}
	if spd > minSpd {
		spd -= .1
	}
	else{
		spd = minSpd
	}
}
//collision
if place_meeting(x+hspeed,y,OB_wall){
	while !place_meeting(x+sign(hspeed),y,OB_wall){
		x += sign(hspeed)
	}
	hspeed = 0
}
//x += hspeed

//collision
if place_meeting(x,y+vspeed,OB_wall){
	while !place_meeting(x,y+sign(vspeed),OB_wall){
		y += sign(vspeed)
	}
	vspeed = 0
}
//y += vspeed



