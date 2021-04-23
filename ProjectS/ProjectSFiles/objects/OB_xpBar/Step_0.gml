//centre the x position to half the room width
//x = camera_get_view_x(view_camera[0])+30
//y = camera_get_view_y(view_camera[0])+30

level_equation = (level/100)*level*500
changing_maxXp = level_equation//round(5 * power(1.25,(level)))
maxXp = round(changing_maxXp)	//((4*level)-level) //changing_maxXp 
system_levelup_increase = global.playerXp/maxXp * (sprite_width - pixel_dif_border*2)
// level up
if  xpBar_Length >= sprite_width - pixel_dif_border*2{ //if the playerXp is greater than the max xp then add a level and restart the length and maxxp ....
	level += 1 // increase level
	
	maxXp = changing_maxXp//((4*level)-level)//changing_maxXp // reset max xp\
	xpBar_Length = 0
}


//adding length to the xp bar
/*
if global.playerXp - maxXp >= 10 && global.playerXp - maxXp < 100{ //if the difference is 10-99, then increase the speed of length
	lengthSpd = (global.playerXp - maxXp)/10
}
*/
if global.playerXp > maxXp {
	level +=1
	lengthSpd = clamp(maxXp/level/level,1,sprite_width - pixel_dif_border*2)
	xpBar_Length=0
}


if xpBar_Length < sprite_width - pixel_dif_border*2 && xpBar_Length < system_levelup_increase{
	xpBar_Length += lengthSpd
}