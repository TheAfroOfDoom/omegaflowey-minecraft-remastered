# x bounds
scoreboard players set @s math.0 -3200
scoreboard players set @s math.1 3200
scoreboard players operation @s math.0 += #omega-flowey.bossfight.summit.soul_origin.x global.flag
scoreboard players operation @s math.1 += #omega-flowey.bossfight.summit.soul_origin.x global.flag

$execute store result score @s $(x_score) run data get entity @s Pos[0] 100
$execute if score @s $(x_score) <= @s math.0 run tag @s add should-terminate
$execute if score @s $(x_score) >= @s math.1 run tag @s add should-terminate

# z bounds
scoreboard players set @s math.0 -4150
scoreboard players set @s math.1 850
scoreboard players operation @s math.0 += #omega-flowey.bossfight.summit.soul_origin.z global.flag
scoreboard players operation @s math.1 += #omega-flowey.bossfight.summit.soul_origin.z global.flag

$execute store result score @s $(z_score) run data get entity @s Pos[2] 100
$execute if score @s $(z_score) <= @s math.0 run tag @s add should-terminate
$execute if score @s $(z_score) >= @s math.1 run tag @s add should-terminate

$execute if entity @s[tag=should-terminate] run $(terminate_command)
