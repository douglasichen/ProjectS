
//create ds list for trail
list_points = ds_list_create()
//length and width of trail
length = 40;
width = 18;
//color of trail
color = make_color_rgb(255, 255, 255)


//------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

//disapear mouse
window_set_cursor(cr_none) //https://docs.yoyogames.com/source/dadiospice/002_reference/windows%20and%20views/the%20game%20window/window_set_cursor.html
//____________________________-



//death
global.playerdeath = false
cooldown_projectile = 30

//enemy distance var
global.ClosestEnemy1 = false
global.ClosestEnemy2 = false
global.ExistsEnemy1 = false
global.ExistsEnemy2 = false
enemy1Dis = 0
enemy2Dis = 0

//mouse control, control over player
MouseControl = true
playerControl = true

//gate variable
gateOpen = false
//test if all enemys are dead
global.LevelFinished = false

//suction into next level portal VARIABLE
global.EnterNextLevel = false

//set variable for double checking and FOR no errors SUCH AS 'variable not set before read'
if instance_exists(OB_positionRefrence) {
    selfDisFromPositionRefrence = distance_to_point(OB_positionRefrence.x, OB_positionRefrence.y)
}

//player shake variables and alarms
player_waitTime_endLvl = 120 // since this object is persistent this create event will run once throughout the whole game even when switching rooms
playerShake = false
playerShake_radius = 5

//speed control
refrenceOBSpeed = false



//mouse movement
x_prev = mouse_x;
y_prev = mouse_y;
spd_max = 5; // Change this to any value you require... it's to cap the speed of the instance

//mouse movement option #2
minSpd = 0
maxSpd = 5
spd = 0


//rotation variable for keeping colision shadow not rotating
playerImageRotation = 0


//health
maxHp = 10;
hp = maxHp;
