# x: -22.00..17.00
execute store result score @s omegaflowey.attack.position.x run random value -2200..1700
execute if entity @s[tag=is_flipped] run scoreboard players operation @s omegaflowey.attack.position.x *= #-1 omegaflowey.math.const

# z: 20.00
scoreboard players set @s omegaflowey.attack.position.z 2000
