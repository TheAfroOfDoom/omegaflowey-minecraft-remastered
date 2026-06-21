scoreboard players operation a summit.wind.calc = @s summit.wind.By
scoreboard players operation a summit.wind.calc -= @s summit.wind.Ay
scoreboard players operation b summit.wind.calc = @s summit.wind.Cz
scoreboard players operation b summit.wind.calc -= @s summit.wind.Az
scoreboard players operation c summit.wind.calc = @s summit.wind.Bz
scoreboard players operation c summit.wind.calc -= @s summit.wind.Az
scoreboard players operation d summit.wind.calc = @s summit.wind.Cy
scoreboard players operation d summit.wind.calc -= @s summit.wind.Ay
scoreboard players operation e summit.wind.calc = @s summit.wind.Cx
scoreboard players operation e summit.wind.calc -= @s summit.wind.Ax
scoreboard players operation f summit.wind.calc = @s summit.wind.Bx
scoreboard players operation f summit.wind.calc -= @s summit.wind.Ax
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get a summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get b summit.wind.calc
function summit.wind:math/multiply
execute store result score @s summit.wind.nx run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get c summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get d summit.wind.calc
function summit.wind:math/multiply
execute store result score g summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.pos.x float 0.01 run scoreboard players operation @s summit.wind.nx -= g summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get c summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get e summit.wind.calc
function summit.wind:math/multiply
execute store result score @s summit.wind.ny run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get f summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get b summit.wind.calc
function summit.wind:math/multiply
execute store result score g summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.pos.y float 0.01 run scoreboard players operation @s summit.wind.ny -= g summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get f summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get d summit.wind.calc
function summit.wind:math/multiply
execute store result score @s summit.wind.nz run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get a summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get e summit.wind.calc
function summit.wind:math/multiply
execute store result score g summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.pos.z float 0.01 run scoreboard players operation @s summit.wind.nz -= g summit.wind.calc
function summit.wind:math/distance
execute store result score mag summit.wind.calc run data get storage summit.wind:data temp.distance 1
execute store result entity @s data.summit.wind.normal.arr[0] double 0.01 store result entity @s data.summit.wind.normal.x double 0.01 run scoreboard players operation @s summit.wind.nx /= mag summit.wind.calc
execute store result entity @s data.summit.wind.normal.arr[1] double 0.01 store result entity @s data.summit.wind.normal.y double 0.01 run scoreboard players operation @s summit.wind.ny /= mag summit.wind.calc
execute store result entity @s data.summit.wind.normal.arr[2] double 0.01 store result entity @s data.summit.wind.normal.z double 0.01 run scoreboard players operation @s summit.wind.nz /= mag summit.wind.calc
execute at @s run function summit.wind:dev/zzz_helpers/set_collision/face_normal with entity @s data.summit.wind.normal
execute at @s positioned ^ ^ ^1 summon marker run function summit.wind:physics/util/get_coords
execute store result entity @s data.summit.wind.normal.X double 0.01 store result score @s summit.wind.nX run data get storage summit.wind:data temp.Pos[0] 100
execute store result entity @s data.summit.wind.normal.Y double 0.01 store result score @s summit.wind.nY run data get storage summit.wind:data temp.Pos[1] 100
execute store result entity @s data.summit.wind.normal.Z double 0.01 store result score @s summit.wind.nZ run data get storage summit.wind:data temp.Pos[2] 100
