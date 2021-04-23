//draw it so when attacking, i want to make the sprite spin to create an effect but i do not want the mask to rotate, so i just keep drawing the changed rotation
if state = states.FOLLOW {
    if draw_spriteRotation = true {
        draw_sprite_ext(S_enemyV2, 11, x, y, image_xscale, image_yscale, rotation_animation, c_white, opacity)
    }
}
else if state = states.ATTACK {
    if draw_spriteRotation = true {
        draw_sprite_ext(S_enemyV2_attack, 0, x, y, image_xscale, image_yscale, rotation_animation, c_white, opacity)
    }
}
else { //if not attack switch to sprite: S_enemyV2 since it is the original sprite I set draw_self()
    draw_self()
}