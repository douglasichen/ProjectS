image_angle = irandom_range(0,360) //random image angle when created for some variety


//direction of growth
growthDirection = 1

//alpha increase

opacityMax = 1
opacityMin = 0
opacityChange = 0.1

xscaleMax = 1.5
xscaleMin = 0.3
xscaleChange = 0.05

yscaleMax = 1.1
yscaleMin = 0.3
yscaleChange = 0.05


image_alpha = .7
image_xscale = .8 ; image_yscale = .8


//play sound
var sound = SN_explode1
var pitch_vary = 0.1
var pitch = random_range(1 - pitch_vary, 1 + pitch_vary)
audio_sound_pitch(sound, pitch)
audio_play_sound(sound,2,false)