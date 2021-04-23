draw_self()
/*
var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);

draw_sprite(S_xpBar,0,cx+30,cy+30);
*/
if global.playerXp>0{
	//draw itself and draw rectangle for xp increase
	draw_rectangle_color(x+pixel_dif_border,y+pixel_dif_border,x+pixel_dif_border + xpBar_Length/*(global.playerXp/maxXp * (sprite_width-3))*/,y+13,c_white,c_white,c_white,c_white,false)
}
//draw the level number

draw_set_colour(c_white);
draw_set_font(F_debug);
//draw_text(x-20, y, level);
if level < 10 {
	draw_text_transformed(x-20,y+1,level,1.5,1.5,0)
}
else if level < 100 && level > 9{
	draw_text_transformed(x-20*1.5,y+1,level,1.5,1.5,0)
}
else if level < 1000 && level > 99{
	draw_text_transformed(x-20*2,y+1,level,1.5,1.5,0)
}




draw_set_font(F_xpBar)

if global.playerXp < 10{
	draw_text(x,y+sprite_height+3,global.playerXp)
	draw_text(x+15,y+sprite_height+3,"/")
	draw_text(x+15*2,y+sprite_height+3,maxXp)
}
else if global.playerXp >= 10 && global.playerXp < 100 {
	draw_text(x,y+sprite_height+3,global.playerXp)
	draw_text(x+15*2,y+sprite_height+3,"/")
	draw_text(x+15*3,y+sprite_height+3,maxXp)
}
else if global.playerXp >= 100 && global.playerXp < 1000 {
	draw_text(x,y+sprite_height+3,global.playerXp)
	draw_text(x+15*3,y+sprite_height+3,"/")
	draw_text(x+15*4,y+sprite_height+3,maxXp)
}
else if global.playerXp >= 1000 && global.playerXp < 10000 {
	draw_text(x,y+sprite_height+3,global.playerXp)
	draw_text(x+15*4,y+sprite_height+3,"/")
	draw_text(x+15*5,y+sprite_height+3,maxXp)
}




