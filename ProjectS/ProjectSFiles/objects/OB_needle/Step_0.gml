//colliding with enemy
if place_meeting(x,y,OB_enemyV2){
	xLockV = OB_player.x-OB_enemyV2.x
	yLockV = OB_player.y-OB_enemyV2.y
	xLock = x+xLockV
	yLock = y+yLockV
	x = xLock
	y = yLock
}