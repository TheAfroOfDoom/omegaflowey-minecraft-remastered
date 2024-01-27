data merge storage utils:damage { damage: 2, radius: 1 }
execute positioned ~ ~ ~ run function entity:utils/damage with storage utils:damage

# Move forward
function entity:hostile/omega-flowey/attack/flies/bullet/loop/move

# Begin terminating after reaching the venus fly trap's mouth
execute unless entity @s[tag=is_terminating] run function entity:group/start
execute unless entity @s[tag=is_terminating] if entity @e[scores={group.id=0},tag=attack-indicator,tag=flies,distance=..4] run tag @s add is_terminating
execute unless entity @s[tag=is_terminating] run function entity:group/end
# guard against flies who move past the fly trap and outside the arena due to e.g. lag
execute unless entity @s[tag=is_terminating] unless entity @s[x=-25,dx=50,y=-100,dy=200,z=-7,dz=29] run tag @s add is_terminating

execute if entity @s[tag=is_terminating] run function entity:hostile/omega-flowey/attack/flies/bullet/loop/terminating
