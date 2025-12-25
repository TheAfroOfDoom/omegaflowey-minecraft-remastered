execute store result score @s omegaflowey.soul.bullet.position.x run data get entity @s Pos[0] 100
execute store result score @s omegaflowey.soul.bullet.position.y run data get entity @s Pos[1] 10000
execute store result score @s omegaflowey.soul.bullet.position.z run data get entity @s Pos[2] 100
# omegaflowey.math.0 == in-bounds boolean
scoreboard players set @s omegaflowey.math.0 0
execute if score @s omegaflowey.soul.bullet.position.x matches -3071..3170 if score @s omegaflowey.soul.bullet.position.z matches -9575..-4635 run scoreboard players set @s omegaflowey.math.0 1

# Summon bandaid at current position
# ONLY if this sword is visible within the soul arena's bounds
execute if score @s omegaflowey.math.0 matches 1 store result storage omegaflowey:soul.0.bullet x float 0.01 run scoreboard players get @s omegaflowey.soul.bullet.position.x
execute if score @s omegaflowey.math.0 matches 1 store result storage omegaflowey:soul.0.bullet y float 0.0001 run scoreboard players get @s omegaflowey.soul.bullet.position.y
execute if score @s omegaflowey.math.0 matches 1 store result storage omegaflowey:soul.0.bullet z float 0.01 run scoreboard players get @s omegaflowey.soul.bullet.position.z
execute if score @s omegaflowey.math.0 matches 1 run function omegaflowey.entity:soul/soul_0/bandaid/summon with storage omegaflowey:soul.0.bullet

# Terminate
function omegaflowey.entity:soul/soul_0/bullet/terminate
