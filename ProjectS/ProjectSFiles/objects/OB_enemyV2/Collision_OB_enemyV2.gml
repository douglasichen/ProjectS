//explode in between other of this object when collide
instance_create_layer((x + other.x) / 2, (y + other.y) / 2, "explosion", OB_explosion) //spawn expolosion in the middle of 2 enemyV2 coliuding

instance_destroy()
