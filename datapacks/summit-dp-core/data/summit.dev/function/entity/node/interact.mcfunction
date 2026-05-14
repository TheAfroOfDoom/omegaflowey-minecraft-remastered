execute on target at @s run playsound minecraft:entity.experience_orb.pickup ui @s ~ ~ ~ 1 1
execute unless data entity @s data.ref run data modify entity @s data.ref set value ""
function summit.dev:entity/node/dialog/setup with entity @s data
execute unless score #temp summit.temp matches 67 run function summit.dev:entity/node/dialog/inspectmenu_error with entity @s data
scoreboard players reset #temp summit.temp
data remove entity @s interaction
