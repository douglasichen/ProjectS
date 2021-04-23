//enter next room
nextRoom = true //room_goto_next()
//room change variable
if nextRoom = true {
	playerControl = true
	MouseControl = true
	global.EnterNextLevel = false
	global.LevelFinished = false
	room_goto_next()

}