data modify storage summit.wind:data temp.corners set from entity @s data.summit.wind.corners
execute store result score val summit.wind.calc run scoreboard players operation check summit.wind.calc = @s summit.wind.Ax
scoreboard players operation check summit.wind.calc %= #100 summit.wind.data
execute if score check summit.wind.calc matches 0 store result storage summit.wind:data temp.corners.Ax double 0.01 run scoreboard players add val summit.wind.calc 1
execute store result score val summit.wind.calc run scoreboard players operation check summit.wind.calc = @s summit.wind.Az
scoreboard players operation check summit.wind.calc %= #100 summit.wind.data
execute if score check summit.wind.calc matches 0 store result storage summit.wind:data temp.corners.Az double 0.01 run scoreboard players add val summit.wind.calc 1
execute store result score val summit.wind.calc run scoreboard players operation check summit.wind.calc = @s summit.wind.Cx
scoreboard players operation check summit.wind.calc %= #100 summit.wind.data
execute if score check summit.wind.calc matches 0 store result storage summit.wind:data temp.corners.Cx double 0.01 run scoreboard players add val summit.wind.calc 1
execute store result score val summit.wind.calc run scoreboard players operation check summit.wind.calc = @s summit.wind.Cz
scoreboard players operation check summit.wind.calc %= #100 summit.wind.data
execute if score check summit.wind.calc matches 0 store result storage summit.wind:data temp.corners.Cz double 0.01 run scoreboard players add val summit.wind.calc 1
execute store result score val summit.wind.calc run scoreboard players operation check summit.wind.calc = @s summit.wind.Bx
scoreboard players operation check summit.wind.calc %= #100 summit.wind.data
execute if score check summit.wind.calc matches 0 store result storage summit.wind:data temp.corners.Bx double 0.01 run scoreboard players add val summit.wind.calc 1
execute store result score val summit.wind.calc run scoreboard players operation check summit.wind.calc = @s summit.wind.Bz
scoreboard players operation check summit.wind.calc %= #100 summit.wind.data
execute if score check summit.wind.calc matches 0 store result storage summit.wind:data temp.corners.Bz double 0.01 run scoreboard players add val summit.wind.calc 1
execute store result score val summit.wind.calc run scoreboard players operation check summit.wind.calc = @s summit.wind.Dx
scoreboard players operation check summit.wind.calc %= #100 summit.wind.data
execute if score check summit.wind.calc matches 0 store result storage summit.wind:data temp.corners.Dx double 0.01 run scoreboard players add val summit.wind.calc 1
execute store result score val summit.wind.calc run scoreboard players operation check summit.wind.calc = @s summit.wind.Dz
scoreboard players operation check summit.wind.calc %= #100 summit.wind.data
execute if score check summit.wind.calc matches 0 store result storage summit.wind:data temp.corners.Dz double 0.01 run scoreboard players add val summit.wind.calc 1
execute at @s[tag=summit.wind.collision_triangle] run function summit.wind:debug/collision_markers/particle_triangle with storage summit.wind:data temp.corners
execute at @s[tag=!summit.wind.collision_triangle] run function summit.wind:debug/collision_markers/particle with storage summit.wind:data temp.corners
data remove storage summit.wind:data temp
