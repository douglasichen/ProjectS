function SC_collideEnemyV2() {
	//collision
	if place_meeting(x+hspeed,y,OB_enemyV2){
		while !place_meeting(x+sign(hspeed),y,OB_enemyV2){
			x += sign(hspeed)
		}
		hspeed = 0
	}
	//x += hspeed
	//collision
	if place_meeting(x,y+vspeed,OB_enemyV2){
		while !place_meeting(x,y+sign(vspeed),OB_enemyV2){
			y += sign(vspeed)
		}
		vspeed = 0
	}
	//y += vspeed


}
