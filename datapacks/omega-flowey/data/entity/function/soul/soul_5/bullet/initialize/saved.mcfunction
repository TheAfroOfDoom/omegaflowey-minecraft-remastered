execute store result score @s soul.bullet.position.x run data get entity @s Pos[0] 100
execute store result score @s soul.bullet.position.z run data get entity @s Pos[2] 100
# math.0 == in-bounds boolean
scoreboard players set @s math.0 0
execute if score @s soul.bullet.position.x matches -3071..3170 if score @s soul.bullet.position.z matches -9575..-4635 run scoreboard players set @s math.0 1

# Summon bandaid at current position
# ONLY if this sword is visible within the soul arena's bounds
execute if score @s math.0 matches 1 store result storage soul:soul_5.bullet x float 0.01 run scoreboard players get @s soul.bullet.position.x
execute if score @s math.0 matches 1 store result storage soul:soul_5.bullet z float 0.01 run scoreboard players get @s soul.bullet.position.z
execute if score @s math.0 matches 1 run function entity:soul/soul_5/bandaid/summon with storage soul:soul_5.bullet

# Terminate
function entity:soul/soul_5/bullet/terminate
