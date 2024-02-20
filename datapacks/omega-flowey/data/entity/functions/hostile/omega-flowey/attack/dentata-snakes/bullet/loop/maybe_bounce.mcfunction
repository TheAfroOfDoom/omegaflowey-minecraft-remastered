# Don't bounce if we've already escaped the arena (past top wall)
execute if entity @s[x=-1000,dx=2000,y=30,dy=10,z=-4,dz=-1000,tag=can-escape-arena] run return 0

data merge storage utils:bounce { command_after_bouncing: 'execute if entity @s[tag=attack-bullet-head] run function entity:hostile/omega-flowey/attack/dentata-snakes/bullet/loop/after_bounce_as_bullet_head' }

function entity:utils/bounce with storage utils:bounce
