execute store result entity @s data.summit.wind.normal.x double 0.01 run scoreboard players operation @s summit.wind.nx *= #-1 summit.wind.data
execute store result entity @s data.summit.wind.normal.y double 0.01 run scoreboard players operation @s summit.wind.ny *= #-1 summit.wind.data
execute store result entity @s data.summit.wind.normal.z double 0.01 run scoreboard players operation @s summit.wind.nz *= #-1 summit.wind.data
execute at @s run tp @s ~ ~ ~ facing ^ ^ ^-1
execute at @s positioned ^ ^ ^1 summon marker run function summit.wind:physics/util/get_coords
execute store result entity @s data.summit.wind.normal.X double 0.01 store result score @s summit.wind.nX run data get storage summit.wind:data temp.Pos[0] 100
execute store result entity @s data.summit.wind.normal.Y double 0.01 store result score @s summit.wind.nY run data get storage summit.wind:data temp.Pos[1] 100
execute store result entity @s data.summit.wind.normal.Z double 0.01 store result score @s summit.wind.nZ run data get storage summit.wind:data temp.Pos[2] 100
