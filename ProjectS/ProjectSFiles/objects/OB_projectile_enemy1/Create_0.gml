//create DS_list for trail
list_points = ds_list_create()
//length and width of trail
length = 20;
width = 8;

//color of trail
color = make_color_rgb(238,28,36)

//-------------------------------------------------



direction = point_direction(x,y,OB_player.x,OB_player.y)

//damage
damage = 5

//play sound

var shootSound = SN_shoot1
var pitch_vary = 0.25
var pitch = random_range(1 - pitch_vary, 1 + pitch_vary)
audio_sound_pitch(shootSound, pitch)
audio_play_sound(shootSound,2,false)