# x bounds
scoreboard players set @s omegaflowey.math.0 -3200
scoreboard players set @s omegaflowey.math.1 3200
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.soul_origin.x omegaflowey.global.flag
scoreboard players operation @s omegaflowey.math.1 += #omegaflowey.bossfight.vanilla.soul_origin.x omegaflowey.global.flag

$execute store result score @s $(x_score) run data get entity @s Pos[0] 100
$execute if score @s $(x_score) <= @s omegaflowey.math.0 run tag @s add should-terminate
$execute if score @s $(x_score) >= @s omegaflowey.math.1 run tag @s add should-terminate

# z bounds
scoreboard players set @s omegaflowey.math.0 -850
scoreboard players set @s omegaflowey.math.1 4150
scoreboard players operation @s omegaflowey.math.0 += #omegaflowey.bossfight.vanilla.soul_origin.z omegaflowey.global.flag
scoreboard players operation @s omegaflowey.math.1 += #omegaflowey.bossfight.vanilla.soul_origin.z omegaflowey.global.flag

$execute store result score @s $(z_score) run data get entity @s Pos[2] 100
$execute if score @s $(z_score) <= @s omegaflowey.math.0 run tag @s add should-terminate
$execute if score @s $(z_score) >= @s omegaflowey.math.1 run tag @s add should-terminate

$execute if entity @s[tag=should-terminate] run $(terminate_command)
