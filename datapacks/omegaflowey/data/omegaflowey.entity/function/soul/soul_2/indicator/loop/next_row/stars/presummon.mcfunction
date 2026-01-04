# reset `math.0` to initial z coord + random offset

# randomize z-coordinate in range -79..-56
execute store result score @s math.0 run random value -79..-56
# center coordinate (z += 0.5)
scoreboard players operation @s math.0 *= #100 mathf.const
scoreboard players add @s math.0 50

execute store result storage soul:soul_2 next_bullet_z float 0.01 run scoreboard players get @s math.0

function entity:soul/soul_2/star/summon with storage soul:soul_2
