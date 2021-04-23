function SC_collideWall() {

	//collision x
	if place_meeting(x+hspeed,y,OB_wall){
		while !place_meeting(x+sign(hspeed),y,OB_wall){
			x += sign(hspeed)
		}
		hspeed = 0
	}

	//x += hspeed
	//collision y
	if place_meeting(x,y+vspeed,OB_wall){
		while !place_meeting(x,y+sign(vspeed),OB_wall){
			y += sign(vspeed)
		}
		vspeed = 0
	}

	//y += vspeed


}
