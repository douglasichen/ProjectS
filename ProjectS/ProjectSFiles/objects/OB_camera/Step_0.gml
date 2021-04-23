
if !instance_exists(OB_player) follow = noone //camera follow none if there is no player in the room.\ This code must be the first thing in the step event
else follow = OB_player // if the player exists then follow the player


x += (xTo - x)/smoothness
y += (yTo - y)/smoothness

if (follow != noone) {
	xTo = follow.x
	yTo = follow.y
}

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
camera_set_view_mat(camera,vm)

