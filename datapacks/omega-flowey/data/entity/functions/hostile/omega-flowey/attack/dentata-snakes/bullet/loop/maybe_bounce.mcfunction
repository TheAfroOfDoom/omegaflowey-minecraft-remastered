# Don't bounce if we've already escaped the arena (past top wall)
execute if entity @s[x=-1000,dx=2000,y=30,dy=10,z=-4,dz=-1000,tag=can-escape-arena] run return 0

function entity:utils/bounce
