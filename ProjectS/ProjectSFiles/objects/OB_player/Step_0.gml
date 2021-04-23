 //run the script for trail for step event
 SC_StepTrail()


 //-------------------------------------------------------------
 //the mouse will be in the center of the screen and will update between x previous and y previous for player movemet
 //display_mouse_set(clamp(display_mouse_get_x(),-1000,10000),clamp(display_mouse_get_y(),-1000,10000))



 //set mouse to the middle of the screen
 //window_mouse_set(display_get_width()/2, display_get_height()/2)

 //wrap the mouse
 camX = camera_get_view_border_x(view_camera[0])
 camY = camera_get_view_border_y(view_camera[0])

 mouseX = window_mouse_get_x()
 mouseY = window_mouse_get_y()
 /*
 if mouseX < window_get_x()+1 {
 	window_mouse_set(window_get_width()/2, mouse_y)
 	x_prev = mouse_x;	
 }


 if mouseX > window_get_width()-2 {
 	window_mouse_set(window_get_width()/2, mouse_y)
 	x_prev = mouse_x;
 }
 */

 //bounce off wall
 move_bounce_solid(true)

 //follow mouse with conditions
 if MouseControl = true && playerControl = true {
     /*
     x = mouse_x
     y = mouse_y
     */
     //direction = point_direction(x,y,mouse_x,mouse_y)
     //x = x + abs((OB_mouseRefrence.x - OB_mouseRefrence.xprevious))


     //mouse and player //
     /*
     var _dist = point_distance(x_prev, y_prev, mouse_x, mouse_y);
     var _dir = point_direction(x_prev, y_prev, mouse_x, mouse_y);
     
     motion_add(_dir, _dist/2); // Change 10 to whatever works for you...
     speed = clamp(_dist/2, 0, spd_max);

     x_prev = mouse_x;
     y_prev = mouse_y;
     
     */

     //movment option #2
     speed = spd
     direction = point_direction(x, y, OB_mouse.x, OB_mouse.y)

     if keyboard_check(ord("X")) {

         if spd < maxSpd {
             spd += .2
         }

         if place_meeting(x, y, OB_mouse) { // fix the player from stuttering when the mouse is hovering the player
             if spd > minSpd {
                 spd = point_distance(x, y, OB_mouse.x, OB_mouse.y) / 7
             }
         }

     }
     else {


         if place_meeting(x, y, OB_mouse) { // fix the player from stuttering when the mouse is hovering the player
             if spd > minSpd {
                 spd = point_distance(x, y, OB_mouse.x, OB_mouse.y) / 7
             }
         }
         if spd > minSpd {
             spd -= .1
         }
         else {
             spd = minSpd
         }
     }
	 /*
     //collids with wall
     SC_collideWall()

     //enemy collision
     SC_collideEnemyV2()
*/


 }

 //________________________________________________
 //-----------------------------------------------------------------------------------------------------------------------------------------
 //keep spinnging / animation

 playerImageRotation += 20 //loook in draw event

 //image_angle += 20


 //kill player variable
 if (global.playerdeath = true) {
     speed = 0
     instance_change(OB_dead_player, true)
 }
 //bullet
 left_hold_mouse = mouse_check_button(mb_left)

 if (cooldown_projectile > 0) cooldown_projectile -= 1 //make sure 'cooldown' does not exeed below -1
 if playerControl = true {
     if left_hold_mouse /*&& (instance_exists(OB_enemy1) or instance_exists(OB_enemy2))*/ && cooldown_projectile == 0 {
         instance_create_layer(x, y, "Bullets", OB_projectile_player)
         cooldown_projectile = 30
     }
 }

 //new
 //which enemy is closer depicted on whether they exist

 if instance_exists(OB_enemy1) { //test for which enemys exists
     global.ExistsEnemy1 = true
     enemy1Dis = point_distance(x, y, OB_enemy1.x, OB_enemy1.y)
 }
 else if !instance_exists(OB_enemy1) {
     global.ExistsEnemy1 = false
 }
 if instance_exists(OB_enemy2) {
     global.ExistsEnemy2 = true
     enemy2Dis = point_distance(x, y, OB_enemy2.x, OB_enemy2.y)
 }
 else if !instance_exists(OB_enemy2) {
     global.ExistsEnemy2 = false
 }


 if (global.ExistsEnemy1 = true) && global.ExistsEnemy2 = false {
     global.ClosestEnemy1 = true
     global.ClosestEnemy2 = false
 }

 else if (global.ExistsEnemy2 = true) && global.ExistsEnemy1 = false {

     global.ClosestEnemy1 = false
     global.ClosestEnemy2 = true
 }

 if global.ExistsEnemy1 = true && global.ExistsEnemy2 = true {
     if (enemy1Dis < enemy2Dis) {
         global.ClosestEnemy1 = true
         global.ClosestEnemy2 = false
     } else if (enemy1Dis > enemy2Dis) {
         global.ClosestEnemy1 = false
         global.ClosestEnemy2 = true
     }
 }

 //end level effect and gate creation
 if global.ExistsEnemy1 = false && global.ExistsEnemy2 = false {
     global.LevelFinished = true
     //direction = point_direction(x,y,)
 }

 if global.LevelFinished = true && room != room_last { //NOT THE LAST ROOM AND LEVEL IS FINISHED
     player_waitTime_endLvl -= 1 // subtract time when will it be sucked into the gate1
     if player_waitTime_endLvl <= 0 {
         if instance_exists(OB_gate1) && !instance_exists(OB_xp_enemy1) {
             direction = point_direction(x, y, OB_gate1.x, OB_gate1.y)
         }
         speed = 10 // this speed value sets when direction is towards the gate
         refrenceOBSpeed = false
         //refrenceOBSpeed = true
     }
     if refrenceOBSpeed = true {
         speed = selfDisFromPositionRefrence / 2
     }

     playerControl = false
     MouseControl = false
     playerShake = true

     if instance_exists(OB_positionRefrence) && instance_exists(OB_player) {
         if player_waitTime_endLvl > 0 { //(x != place_meeting(x,y,OB_positionRefrence)) && (y != place_meeting(x,y,OB_positionRefrence)){
             direction = point_direction(x, y, OB_positionRefrence.x, OB_positionRefrence.y)
             refrenceOBSpeed = true
         }
     }

     /*	else if !instance_exists(OB_positionRefrence)&& instance_exists(OB_player){
     			//selfDisFromPositionRefrence = point_direction(x,y,OB_positionRefrence.x,OB_positionRefrence.y) //spd vars

     			//add speed according to distance of position Refrence ONLY WHEN LEVEL IS FINISHED
     			if (selfDisFromPositionRefrence >= 0) && (selfDisFromPositionRefrence <31){
     				speed = 1
     			}
     			else if (selfDisFromPositionRefrence > 30) && (selfDisFromPositionRefrence <91){
     					speed = 3
     			}
     			else if (selfDisFromPositionRefrence > 90) && (selfDisFromPositionRefrence <181){
     					speed = 5
     			}
     			else if (selfDisFromPositionRefrence > 180) && (selfDisFromPositionRefrence <301){
     					speed = 7
     			}
     			else if (selfDisFromPositionRefrence > 300) && (selfDisFromPositionRefrence <451){
     					speed = 9
     			}
     			else if (selfDisFromPositionRefrence > 450) && (selfDisFromPositionRefrence <631){
     					speed = 11
     			}
     			else if (selfDisFromPositionRefrence > 630) && (selfDisFromPositionRefrence <841){
     					speed = 13
     			}
     			else if (selfDisFromPositionRefrence > 840) && (selfDisFromPositionRefrence <1081){
     					speed = 15
     			}
     	}
     */
     //set speed to 0 if the gate does not exist
     if !instance_exists(OB_gate1) speed = 0

     //change direction facing to position refrence IF ENTER NEXT LEVEL IS FALSE
     if global.EnterNextLevel = false && instance_exists(OB_positionRefrence) {
         direction = point_direction(x, y, OB_positionRefrence.x, OB_positionRefrence.y) //change direction facing the position refrence
     }
     //enter portal with remote player movement to create a suction effect
     else if global.EnterNextLevel = true && instance_exists(OB_gate1) {
         direction = point_direction(x, y, OB_gate1.x, OB_gate1.y)

     }
     //test for 0 enemys to create portal
     if !instance_exists(OB_gate1) && global.ExistsEnemy1 = false && global.ExistsEnemy2 = false && room != 3 {
         instance_create_layer(room_width / 10 * 9, room_height / 2, "Gate", OB_gate1)
     }
 }
 //if the gate exists, gateOpen is true
 if instance_exists(OB_gate1) {
     gateOpen = true
 }
 else {
     gateOpen = false
 }
 //check when to allow control
 if gateOpen = false {
     playerControl = true
     MouseControl = true
 }
 //distance of instances from the player

 //always check for distance of position refrence IF IT EXISTS for endgame speed amplification AND DEBUGGING
 if instance_exists(OB_positionRefrence) { // also in create evet for double check
     selfDisFromPositionRefrence = distance_to_point(OB_positionRefrence.x, OB_positionRefrence.y)
 }
 /*
 if instance_exists(OB_gate1){
 	//gate distance from player variable USE FOR debugging and speed amplification(only use when level is finished)
 	selfDisFromGate1 = distance_to_point(OB_gate1.x,OB_gate1.y)
 }
 */




 /*
 //player shoot closest enemy
 if (instance_exists(OB_enemy1)) {
 	enemy1Dis = point_distance(x,y,OB_enemy1.x,OB_enemy1.y)
 }
 if (instance_exists(OB_enemy2)) {
 	enemy2Dis = point_distance(x,y,OB_enemy2.x,OB_enemy2.y)
 }

 if(instance_exists(OB_enemy1) && instance_exists(OB_enemy2)) {
 	if (enemy1Dis < enemy2Dis) {
 		global.ClosestEnemy1 = true
 		global.ClosestEnemy2 = false
 	}
 		else {
 			global.ClosestEnemy1 = false
 			global.ClosestEnemy2 = true
 		}
 }
 */

//attacks

//needle

//if keyboard_check_pressed(ord("C")){
//	instance_create_layer(x,y+40,"Players",OB_needle)
//}

//die
if hp <= 0 {
	global.playerdeath = true
}

//collids with wall
SC_collideWall()

//enemy collision
SC_collideEnemyV2()


