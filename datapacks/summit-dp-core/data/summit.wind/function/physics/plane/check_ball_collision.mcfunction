scoreboard players operation plane_x summit.wind.calc = @s summit.wind.x
scoreboard players operation plane_y summit.wind.calc = @s summit.wind.y
scoreboard players operation plane_z summit.wind.calc = @s summit.wind.z
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation plane_x summit.wind.calc -= ball_x summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get @s summit.wind.nx
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score dist summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation plane_y summit.wind.calc -= ball_y summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get @s summit.wind.ny
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation plane_z summit.wind.calc -= ball_z summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get @s summit.wind.nz
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation dist summit.wind.calc += y summit.wind.calc
scoreboard players operation dist summit.wind.calc += z summit.wind.calc
scoreboard players operation dist summit.wind.calc *= #-1 summit.wind.data
scoreboard players operation radius summit.wind.calc *= #-1 summit.wind.data
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get dist summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get @s summit.wind.nx
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score P summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation Px summit.wind.calc = ball_x summit.wind.calc
scoreboard players operation Px summit.wind.calc -= P summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get dist summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get @s summit.wind.ny
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score P summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation Py summit.wind.calc = ball_y summit.wind.calc
scoreboard players operation Py summit.wind.calc -= P summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get dist summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get @s summit.wind.nz
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score P summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation Pz summit.wind.calc = ball_z summit.wind.calc
scoreboard players operation Pz summit.wind.calc -= P summit.wind.calc
function summit.wind:physics/plane/check_ball_collision/check_points/ac
function summit.wind:physics/plane/check_ball_collision/check_points/cb
function summit.wind:physics/plane/check_ball_collision/check_points/ba
scoreboard players set inside summit.wind.calc 0
execute if score ac summit.wind.calc matches 0.. if score cb summit.wind.calc matches 0.. if score ba summit.wind.calc matches 0.. run scoreboard players set inside summit.wind.calc 1
execute if score ac summit.wind.calc matches ..0 if score cb summit.wind.calc matches ..0 if score ba summit.wind.calc matches ..0 run scoreboard players set inside summit.wind.calc 1
execute unless entity @s[tag=summit.wind.collision_triangle] run function summit.wind:physics/plane/check_ball_collision/parallelogram/center_projection
execute if score inside summit.wind.calc matches 0 run return fail
execute if score dist summit.wind.calc matches 0.. run return fail
execute if score markers summit.wind.data matches 1 at @s run particle flame ~ ~ ~ 0 0 0 0 1
tag @s add summit.wind.colliding
