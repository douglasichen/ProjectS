//smooth length change
if (instance_exists(OB_player)) {
	var player = OB_player;

	targetLength = maxBarLength * (player.hp / player.maxHp);

	if (barLength > targetLength) {
		if (barLength - lengthSpd < 0) {
			barLength = 0
		}
		else {
			barLength -= lengthSpd
		}
	}
}
else {
	if (barLength > 0) {
		if (barLength - lengthSpd < 0) {
			barLength = 0
		}
		else {
			barLength -= lengthSpd
		}
	}
}
