
//xp variables 
level = 1
global.playerXp = 0
pixel_dif_border = 3

level_equation = (level/100)*level*500
changing_maxXp = level_equation
maxXp = round(changing_maxXp)//((4*level)-level)//changing_maxXp // round the system fr leveling up to make it an integer hwne a decimal it can cause unwanted results...remove 'round' to see

system_levelup_increase = global.playerXp/maxXp * (sprite_width - pixel_dif_border*2)
//maxXpPoint =//this variable is used to find the point the length is going to add to
xpBar_Length = 0
//variable to speed up the length addition 
lengthSpd = 1



//initial_length = sprite_width
//image_xscale = 0
//varible for length_fraction check


/*
xp_level_1_min = 0
xp_level_1_max = 5
xp_level_2_min = 6
xp_level_2_max = 15
xp_level_3_min = 16
xp_level_3_max = 30
xp_level_4_min = 31
xp_level_4_max = 50
xp_level_5_min = 51
xp_level_5_max = 75
xp_level_6_min = 76
xp_level_6_max = 105
xp_level_7_min = 106
xp_level_7_max = 140
*/
//for no error MUST CHANGE LATER
if !instance_exists(OB_player) instance_destroy()
//check
//length_fraction =0