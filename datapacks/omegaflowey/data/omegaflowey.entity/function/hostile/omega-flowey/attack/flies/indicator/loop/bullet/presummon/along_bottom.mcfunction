# x: -22.00..17.00
execute store result score @s attack.position.x run random value -2200..1700
execute if entity @s[tag=is_flipped] run scoreboard players operation @s attack.position.x *= #-1 mathf.const

# z: 20.00
scoreboard players set @s attack.position.z 2000
