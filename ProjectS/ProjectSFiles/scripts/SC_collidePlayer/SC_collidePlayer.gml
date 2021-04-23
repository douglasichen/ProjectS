function SC_collidePlayer() {
	//collision
	if place_meeting(x+hspeed,y,OB_player){
		while !place_meeting(x+sign(hspeed),y,OB_player){
			x += sign(hspeed)
		}
		hspeed = 0
	}
	//x += hspeed
	//collision
	if place_meeting(x,y+vspeed,OB_player){
		while !place_meeting(x,y+sign(vspeed),OB_player){
			y += sign(vspeed)
		}
		vspeed = 0
	}
	//y += vspeed


}
