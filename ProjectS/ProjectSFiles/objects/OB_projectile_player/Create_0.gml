//var
list_points = ds_list_create()

//trail width and length
length = 20;
width = 8;

//color of trail
color = make_color_rgb(137,137,137)

//-------------------------------------------------

//change direction dependent on enemy position(x,y)
if global.ClosestEnemy1 = true{
	if (instance_exists(OB_enemy1)) direction = point_direction(x,y,OB_enemy1.x,OB_enemy1.y)
}
else if global.ClosestEnemy2 = true{
	if (instance_exists(OB_enemy2)) direction = point_direction(x,y,OB_enemy2.x,OB_enemy2.y)
}

// check closest for enemyV2
if instance_exists(OB_enemyV2) {
	var l = ds_list_create()
	var ld = ds_list_create()
	
	var ob = OB_enemyV2;
	
	for (var i = 0; i < instance_number(OB_enemyV2); i += 1) {
		var inst = instance_find(ob, i)
		ds_list_add(l, inst)	
	}
	
	for (var o = 0; o < instance_number(OB_enemyV2); o += 1) {
		var inst = instance_find(ob, o)
		ds_list_add(ld, inst.distance_to_player)
	}
	
	var minV = ds_list_find_value(ld, 0)
	var pos = 0
	
	for (var m = 0; m < ds_list_size(ld) - 1; m += 1) {
		if (minV > ds_list_find_value(ld, m + 1)) {
			minV = ds_list_find_value(ld, m + 1)
			pos = m + 1 
		}
	}
	
	var enemyX = ds_list_find_value(l, pos).x
	var enemyY = ds_list_find_value(l, pos).y
	
	direction = point_direction(x, y, enemyX, enemyY)
}
//speed and cooldown
speed = 7

//play sound
var shootSound = SN_shoot2
var pitch_vary = 0.4
var pitch = random_range(1 - pitch_vary, 1 + pitch_vary)
audio_sound_pitch(shootSound, pitch)
audio_play_sound(shootSound,2,false)






