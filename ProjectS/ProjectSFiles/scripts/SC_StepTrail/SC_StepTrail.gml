function SC_StepTrail() {
	var _size_list = ds_list_size(list_points)
	if(_size_list >= length) {
		var _grid_point = list_points[| 0]
		if ds_exists(_grid_point, ds_type_grid) {
			ds_grid_destroy(_grid_point)
		}
		ds_list_delete(list_points,0)
	}


	//add a point each step
	epoint_x = e_point.x
	epoint_y = e_point.y
	epoint_width = e_point.width
	epoint_length = e_point.length

	var _grid_point = ds_grid_create(1,epoint_length)
	_grid_point[# 0, epoint_x] = self.x;
	_grid_point[# 0, epoint_y] = self.y;
	_grid_point[# 0, epoint_width] = width;
	ds_list_add(list_points, _grid_point);

	//refresh width
	var _size_list = ds_list_size(list_points)
	for(var _i=0; _i< _size_list; _i++){
		var _grid_point = list_points[| _i]
		_grid_point[# 0, epoint_width] *= 0.9	
	}


}
