//run draw trail script
SC_DrawTrail()


//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//debug the distance of player from position refrence FOR DEUGGING ONLY
/*
if instance_exists(OB_gate1){
	draw_set_colour(c_white);
	draw_set_font(F_debug);
	draw_text(200, 200, selfDisFromGate1);
}

*/
//draw the image rotation so it does not change the 
draw_sprite_ext(S_player,0,x,y,image_xscale,image_yscale,playerImageRotation,c_white,1);



//draw_self()


