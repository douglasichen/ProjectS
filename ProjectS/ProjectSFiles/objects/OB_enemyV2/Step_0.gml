//_________________________________

//speed
speed = spd

//____________________________________________________________

// every frame updating vars
if instance_exists(OB_player) {

    not_behind_wall = !collision_line(other.x, other.y, OB_player.x, OB_player.y, OB_wall, false, false)
    distance_to_player = distance_to_point(OB_player.x, OB_player.y)

    if distance_to_player <= detection_radius {

        if !collision_line(x, y, OB_player.x, OB_player.y, OB_wall, false, false) { //ONLY if the player is NOT behind a wall,detect
            state = states.DETECT
        }
        else {
            state = states.SLEEP
        }
        if sprite_index = S_enemyV2 && image_index = 11 && not_behind_wall {
            state = states.FOLLOW
            image_speed = 0
        }

    }
    else {
        state = states.SLEEP
    }

    //attack when?
    if distance_to_player <= attack_radius {
        state = states.ATTACK
    }


    //states
	if state = states.SLEEP {
		sprite_index = S_enemyV2
	    if image_index >= 1 {
			image_speed = -1
			//	speed = 0
			spd = 0
			}
		else {
			image_index = 0
			image_speed = 0
		}
	}
    
    else if state = states.DETECT {
        sprite_index = S_enemyV2
        image_speed = 1

    }
    else if state = states.FOLLOW {
        direction = point_direction(x, y, random_range(-added_randomDirection, added_randomDirection) + OB_player.x, random_range(-added_randomDirection, added_randomDirection) + OB_player.y)
		draw_spriteRotation = true
        rotation_animation += spin //make it spin
        sprite_index = S_enemyV2



        spd = (distance_to_player + detection_radius - (distance_to_player * 2)) / (spdAmplificationValue) //this makes it so the farther this object is from the player, the slower, meaning, the closer the faster


        
    }

    else if state = states.ATTACK {
       
        mask_index = S_enemyV2 //set the collision mask to stay a sqaure check S_enemyV2_attack for collision mask
        draw_spriteRotation = true

        rotation_animation += spin //make the spin increase

        //speed stop when?
        if distance_to_player <= stop_radius {
            //speed = 0
            spd = 0
			
			//attack
			OB_player.hp -= damage
			
        }
        else {
			direction = point_direction(x, y, random_range(-added_randomDirection, added_randomDirection) + OB_player.x, random_range(-added_randomDirection, added_randomDirection) + OB_player.y)
            spd = (distance_to_player + detection_radius - (distance_to_player * 2)) / (spdAmplificationValue) //this makes it so the farther this object is from the player, the slower, meaning, the closer the faster
        }
        

    }
}
else {
	state = states.SLEEP
}
if state = states.SLEEP {
	sprite_index = S_enemyV2
    if image_index >= 1 {
		image_speed = -1
		//	speed = 0
		spd = 0
		}
	else {
		image_index = 0
		image_speed = 0
	}
}

//collide script MUST BE UNDER AL SPEED CHANGES
SC_collideWall()