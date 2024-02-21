# Don't bounce if we've already escaped the arena (past top wall)
execute if entity @s[x=-1000,dx=2000,y=30,dy=10,z=-4,dz=-1000,tag=can-escape-arena] run return 0

# TODO(42): adjust arena bounds based on new animated java model (visually, it clips into the wall right now)
data merge storage attack:dentata-snakes.bounce { x_negative_x: -21, x_negative_dx: 50 }
data merge storage attack:dentata-snakes.bounce { x_positive_x: 21, x_positive_dx: -50 }
data merge storage attack:dentata-snakes.bounce { z_negative_z: -3, z_negative_dz: 25 }
data merge storage attack:dentata-snakes.bounce { z_positive_z: 18, z_positive_dz: -25 }
data merge storage attack:dentata-snakes.bounce { y: 30, dy: 10 }
data merge storage attack:dentata-snakes.bounce { command_after_bouncing: 'execute if entity @s[tag=attack-bullet-head] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/loop/after_bounce_as_bullet_head' }

function entity:utils/bounce with storage attack:dentata-snakes.bounce
