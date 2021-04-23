//set vars
zoom = 350 / 100 // this makes it a percent
//

camera = camera_create()

var vm = matrix_build_lookat(x,y,-10,x,y,0,0,1,0)
var pm = matrix_build_projection_ortho(1920/zoom,1080/zoom,1,10000)

camera_set_view_mat(camera,vm)
camera_set_proj_mat(camera,pm)

view_camera[0] = camera


//follow
follow = OB_player
xTo = follow.x
yTo = follow.y

//smoothness
smoothness = 10

//
//this OBJECT IS NOT used right now