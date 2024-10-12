# Flip yaw that bullet will summon with
execute store result score @s omegaflowey.math.0 run data get entity @s Rotation[0] 100
scoreboard players add @s omegaflowey.math.0 18000
execute store result storage attack:homing-vines bullet_yaw float 0.01 run scoreboard players get @s omegaflowey.math.0

# Flip pitch that bullet will summon with
execute store result score @s omegaflowey.math.0 run data get entity @s Rotation[1] 100
scoreboard players operation @s omegaflowey.math.0 *= #omegaflowey.const.-1 omegaflowey.math.const
execute store result storage attack:homing-vines bullet_pitch float 0.01 run scoreboard players get @s omegaflowey.math.0

# Summon bullet
execute at @s run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/indicator/loop/summon_bullet with storage attack:homing-vines
