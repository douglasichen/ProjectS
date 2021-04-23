//play sound
var sound = SN_die1
var pitch_vary = 0.3
var pitch = random_range(1 - pitch_vary, 1 + pitch_vary)
audio_sound_pitch(sound, pitch)
audio_play_sound(sound,2,false)