//attach vars


//increase/decrease size and opacity
//opacity
if image_alpha < opacityMax{
	image_alpha += opacityChange * growthDirection
}
else{
	if image_xscale >= xscaleMax && image_yscale >= yscaleMax{
		growthDirection = -1
	}
	image_alpha += opacityChange * growthDirection
}
//xscale
if image_xscale < xscaleMax{
	image_xscale += xscaleChange
}
else{
	if image_alpha >= opacityMax && image_yscale >= yscaleMax{
		growthDirection = -1
	}
	image_xscale += xscaleChange
}
//yscale
if image_yscale < yscaleMax{
	image_yscale += yscaleChange
}
else{
	if image_xscale >= xscaleMax && image_yscale >= opacityMax{
		growthDirection = -1
	}
	image_yscale += yscaleChange
}

//destroy
if (image_alpha <= opacityMin) && (image_xscale <= xscaleMin) && (image_yscale <= yscaleMin) {
	instance_destroy()
}



