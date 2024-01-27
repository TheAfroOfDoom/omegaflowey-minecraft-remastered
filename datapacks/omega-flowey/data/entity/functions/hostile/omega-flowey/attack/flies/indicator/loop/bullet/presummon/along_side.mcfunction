# x: 23.00
scoreboard players set @s attack.position.x -2300
execute if entity @s[tag=is_flipped] run scoreboard players operation @s attack.position.x *= #-1 mathf.const

# z: -4.00..19.00
execute store result score @s attack.position.z run random value -400..1900
