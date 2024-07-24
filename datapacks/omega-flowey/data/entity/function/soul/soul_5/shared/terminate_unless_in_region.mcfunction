$execute store result score @s $(x_score) run data get entity @s Pos[0] 100
$execute store result score @s $(z_score) run data get entity @s Pos[2] 100
$execute unless score @s $(x_score) matches -3100..3200 run tag @s add should-terminate
$execute unless score @s $(z_score) matches -9600..-4600 run tag @s add should-terminate
$execute if entity @s[tag=should-terminate] run $(terminate_command)
