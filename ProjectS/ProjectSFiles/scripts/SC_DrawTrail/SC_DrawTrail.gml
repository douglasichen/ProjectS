function SC_DrawTrail() {

	//draw trail
	draw_set_color(color)
	draw_primitive_begin(pr_trianglestrip)
		var _size_list = ds_list_size(list_points)
		for(var _i=0; _i< _size_list - 1; _i++){
			var _grid_point1 = list_points[| _i]
			var _grid_point2 = list_points[| _i+1]
		
			var _x1 = _grid_point1[# 0,epoint_x]
			var _y1 = _grid_point1[# 0,epoint_y]
			var _w1 = _grid_point1[# 0,epoint_width]
			var _x2 = _grid_point2[# 0,epoint_x]
			var _y2 = _grid_point2[# 0,epoint_y]
			var _w2 = _grid_point2[# 0,epoint_width]
		
			var _dir = point_direction(_x1,_y1,_x2,_y2)
			var _ortho_dir1 = _dir + 90
			var _ortho_dir2 = _dir -90
		
			draw_vertex(_x1 + lengthdir_x(_w1, _ortho_dir1), _y1 + lengthdir_y(_w1, _ortho_dir1))
			draw_vertex(_x1 + lengthdir_x(_w1, _ortho_dir2), _y1 + lengthdir_y(_w1, _ortho_dir2))
			draw_vertex(_x2 + lengthdir_x(_w2, _ortho_dir1), _y2 + lengthdir_y(_w2, _ortho_dir1))
			draw_vertex(_x2 + lengthdir_x(_w2, _ortho_dir2), _y2 + lengthdir_y(_w2, _ortho_dir2))
		
		
		}



	draw_primitive_end()



	//draw_self()


}
