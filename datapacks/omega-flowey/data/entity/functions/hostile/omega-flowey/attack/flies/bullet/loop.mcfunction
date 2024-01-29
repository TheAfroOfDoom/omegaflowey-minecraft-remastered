data merge storage utils:damage { damage: 2, radius: 1.5 }
execute positioned ~ ~-0.5 ~ run function entity:utils/damage with storage utils:damage

# Move forward
function entity:hostile/omega-flowey/attack/flies/bullet/loop/move

execute if entity @s[tag=is_terminating] run function entity:hostile/omega-flowey/attack/flies/bullet/loop/terminating
execute if entity @s[tag=is_terminating] run return 0

# Begin terminating after reaching the venus fly trap's mouth
function entity:group/start
execute if entity @e[scores={group.id=0},tag=attack-indicator,tag=flies,distance=..5] run tag @s add is_terminating
function entity:group/end
# guard against flies who move past the fly trap and outside the arena due to e.g. lag
execute unless entity @s[x=-25,dx=50,y=-100,dy=200,z=-7,dz=29] run tag @s add is_terminating
