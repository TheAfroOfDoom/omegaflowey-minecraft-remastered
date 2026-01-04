# reset `math.0` to initial z coord + random offset

# randomize z-coordinate in range -79..-56
execute store result score @s omegaflowey.math.0 run random value -79..-56
# center coordinate (z += 0.5)
scoreboard players operation @s omegaflowey.math.0 *= #omegaflowey.const.100 omegaflowey.math.const
scoreboard players add @s omegaflowey.math.0 50

execute store result storage omegaflowey:soul.2 next_bullet_z float 0.01 run scoreboard players get @s omegaflowey.math.0

function omegaflowey.entity:soul/soul_2/star/summon with storage omegaflowey:soul.2
