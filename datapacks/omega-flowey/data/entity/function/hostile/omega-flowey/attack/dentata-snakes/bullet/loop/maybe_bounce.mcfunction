# Don't bounce if we've already escaped the arena (past wall towards Flowey)
# TODO: TAG_SUMMIT_HARDCODED
execute if entity @s[x=822.5,dx=-2000,y=60,dy=10,z=54,dz=1000,tag=can-escape-arena] run return 0

# TODO(42): adjust arena bounds based on new animated java model (visually, it clips into the wall right now)
# TODO: TAG_SUMMIT_HARDCODED
data merge storage attack:dentata-snakes.bounce { x_negative_x: -198.5, x_negative_dx: 50 }
# TODO: TAG_SUMMIT_HARDCODED
data merge storage attack:dentata-snakes.bounce { x_positive_x: -156.5, x_positive_dx: -50 }
# TODO: TAG_SUMMIT_HARDCODED
data merge storage attack:dentata-snakes.bounce { z_negative_z: 32, z_negative_dz: 25 }
# TODO: TAG_SUMMIT_HARDCODED
data merge storage attack:dentata-snakes.bounce { z_positive_z: 53, z_positive_dz: -25 }
# TODO: TAG_SUMMIT_HARDCODED
data merge storage attack:dentata-snakes.bounce { y: 60, dy: 10 }
data merge storage attack:dentata-snakes.bounce { command_after_bouncing: 'execute if entity @s[tag=attack-bullet-head] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/loop/after_bounce_as_bullet_head' }

function entity:utils/bounce with storage attack:dentata-snakes.bounce
