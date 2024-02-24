execute store result score @s soul.bullet.position.x run data get entity @s Pos[0] 100
execute store result score @s soul.bullet.position.z run data get entity @s Pos[2] 100
# math.0 == in-bounds boolean
scoreboard players set @s math.0 0
execute if score @s soul.bullet.position.x matches -3071..3170 if score @s soul.bullet.position.z matches -9575..-4635 run scoreboard players set @s math.0 1

# TODO: Summon bandaid at current position
# ONLY if this sword is visible within the soul arena's bounds
# execute if score @s math.0 matches 1 run function animated_java:soul_0_bandaid/summon

# Terminate
# function entity:soul/soul_0/bullet/terminate
execute unless score @s math.0 matches 1 run function entity:soul/soul_0/bullet/terminate
