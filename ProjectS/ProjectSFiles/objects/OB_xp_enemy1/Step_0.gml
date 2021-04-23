//animate with rotation to give some feel of movement
image_angle += 1
if image_alpha < 1{ //if image alpha has not reached 1 yet, keep adding to the image alpha
	image_alpha += 0.0083
}
else if image_alpha>= 1{
	image_alpha = 1 // change image alpha to 1 for good measure and make sure it does not stay greater than 1
	speed = 5
	}
//direction its facing will be towards player
if instance_exists(OB_player){
	angle_to_player = point_direction(x,y,OB_player.x,OB_player.y)
	direction = angle_to_player
}
else{
	speed = 0
}
//global var for hit player



//size increase depending on if it collides with itsself and if its the same size
//destroy the smaller xp to make bigger xp
/*
if place_meeting(x,y,self){ //if it collides with its self and they are both the same size then?
	instance_create_layer(x,y,layer,self)
	instance_destroy() //destroy itself
	instance_destroy(other) //destroy other collider that is the same instance
	other.changing_size = 0.75
	//create new bt bigger xp
}
*/
//test test
//OB_player.x = 700
//OB_player.y = 300
//start path


/*
//direction Variable
direction = newDirection
//transition code
//opacity increase for transition
OB_player.y = room_height/2
OB_player.x = 700
//distance_from_Self_to_Player = distance_to_point(OB_player.x,OB_player.y)



step +=1

else if image_alpha > 1{ //if the opacity is greater than 1 then lock the number back to 1
	image_alpha = 1
}
//when image alpha is 100% (or 1) start arc equation
if image_alpha = 1{
	arc = true
	speed = abs(SpeedX*(cos(newAngle*pi/180)))
}



//direction change if arc is true
if arc = true{
	newAngle -= initialAngle/60
	newDirection -= initialAngle/60
}

*/