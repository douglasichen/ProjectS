//draw outline
draw_rectangle_color(startX - outlineThickness, startY - outlineThickness, startX + maxBarLength + outlineThickness, startY + barHeight + outlineThickness, barOutlineColor, barOutlineColor, barOutlineColor, barOutlineColor, false);
//draw Color Outside
draw_rectangle_color(startX, startY, startX + maxBarLength, startY + barHeight, barColor2, barColor2, barColor2, barColor2, false);

//draw the color inside
if (instance_exists(OB_player)) {
	if (OB_player.hp > 0) {
		draw_rectangle_color(startX, startY, startX + barLength, startY + barHeight, barColor1, barColor1, barColor1, barColor1, false);
	}
}
else {
	draw_rectangle_color(startX, startY, startX + barLength, startY + barHeight, barColor1, barColor1, barColor1, barColor1, false);
}


