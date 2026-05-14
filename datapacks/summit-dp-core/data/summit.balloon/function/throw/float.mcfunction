tag @s add summit.floating_balloon
execute store result score $motion summit.temp run data get entity @s Motion[1] 100
scoreboard players add $motion summit.temp 30
data merge entity @s {NoGravity: true, Age: 5000}
execute store result entity @s Motion[1] float 0.01 run scoreboard players get $motion summit.temp
