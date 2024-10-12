data merge storage utils:damage { damage: 2, radius: 1.5 }
execute positioned ~ ~-0.5 ~ run function omegaflowey.entity:utils/damage with storage utils:damage

execute if entity @s[tag=is_terminating] run function omegaflowey.entity:hostile/omega-flowey/attack/flies/bullet/loop/terminating
execute if entity @s[tag=is_terminating] run return 0

# Move forward
function omegaflowey.entity:hostile/omega-flowey/attack/flies/bullet/loop/move

# Begin terminating after reaching the venus fly trap's mouth
function omegaflowey.entity:group/start
execute if entity @e[scores={omegaflowey.group.id=0},tag=attack-indicator,tag=flies,distance=..5] run tag @s add is_terminating
function omegaflowey.entity:group/end
# guard against flies who move past the fly trap and outside the arena due to e.g. lag
execute unless entity @s[x=-25,dx=50,y=-100,dy=200,z=-7,dz=29] run tag @s add is_terminating
