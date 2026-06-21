data merge entity @s {CustomName: "Collision Plane", Tags: ["summit.wind.collision"], data: {summit: {wind: {normal: {arr: [0.0d, 0.0d, 0.0d]}}}}}
data modify storage summit.wind:data temp.pos1 set from entity @n[type=area_effect_cloud, tag=summit.wind.pos_1, distance=..50] Pos
data modify storage summit.wind:data temp.pos2 set from entity @n[type=area_effect_cloud, tag=summit.wind.pos_2, distance=..50] Pos
execute store result score p1 summit.wind.calc run data get storage summit.wind:data temp.pos1[0] 100
execute store result score p2 summit.wind.calc run data get storage summit.wind:data temp.pos2[0] 100
execute store result entity @s Pos[0] double 0.005 run scoreboard players operation p1 summit.wind.calc += p2 summit.wind.calc
execute store result score p1 summit.wind.calc run data get storage summit.wind:data temp.pos1[1] 100
execute store result score p2 summit.wind.calc run data get storage summit.wind:data temp.pos2[1] 100
execute store result entity @s Pos[1] double 0.005 run scoreboard players operation p1 summit.wind.calc += p2 summit.wind.calc
execute store result score p1 summit.wind.calc run data get storage summit.wind:data temp.pos1[2] 100
execute store result score p2 summit.wind.calc run data get storage summit.wind:data temp.pos2[2] 100
execute store result entity @s Pos[2] double 0.005 run scoreboard players operation p1 summit.wind.calc += p2 summit.wind.calc
data modify storage summit.wind:data temp.pos3 set from entity @n[type=area_effect_cloud, tag=summit.wind.pos_3, distance=..50] Pos
data modify storage summit.wind:data temp.posM set from entity @s Pos
execute store result score @s summit.wind.x run data get storage summit.wind:data temp.posM[0] 100
execute store result score @s summit.wind.Ax store result entity @s data.summit.wind.corners.Ax double 0.01 run data get storage summit.wind:data temp.pos1[0] 100
execute store result score @s summit.wind.Bx store result entity @s data.summit.wind.corners.Bx double 0.01 run data get storage summit.wind:data temp.pos3[0] 100
execute store result score @s summit.wind.Cx store result entity @s data.summit.wind.corners.Cx double 0.01 run data get storage summit.wind:data temp.pos2[0] 100
execute store result score @s summit.wind.y run data get storage summit.wind:data temp.posM[1] 100
execute store result score @s summit.wind.Ay store result entity @s data.summit.wind.corners.Ay double 0.01 run data get storage summit.wind:data temp.pos1[1] 100
execute store result score @s summit.wind.By store result entity @s data.summit.wind.corners.By double 0.01 run data get storage summit.wind:data temp.pos3[1] 100
execute store result score @s summit.wind.Cy store result entity @s data.summit.wind.corners.Cy double 0.01 run data get storage summit.wind:data temp.pos2[1] 100
execute store result score @s summit.wind.z run data get storage summit.wind:data temp.posM[2] 100
execute store result score @s summit.wind.Az store result entity @s data.summit.wind.corners.Az double 0.01 run data get storage summit.wind:data temp.pos1[2] 100
execute store result score @s summit.wind.Bz store result entity @s data.summit.wind.corners.Bz double 0.01 run data get storage summit.wind:data temp.pos3[2] 100
execute store result score @s summit.wind.Cz store result entity @s data.summit.wind.corners.Cz double 0.01 run data get storage summit.wind:data temp.pos2[2] 100
function summit.wind:dev/zzz_helpers/set_collision/set_normal
execute if score triangle summit.wind.data matches 1 run return run tag @s add summit.wind.collision_triangle
execute store result score p1 summit.wind.calc run data get storage summit.wind:data temp.posM[0] 100
execute store result score p2 summit.wind.calc run data get storage summit.wind:data temp.pos3[0] 100
scoreboard players operation p2 summit.wind.calc -= p1 summit.wind.calc
execute store result score @s summit.wind.Dx store result entity @s data.summit.wind.corners.Dx double 0.01 run scoreboard players operation p1 summit.wind.calc -= p2 summit.wind.calc
execute store result score p1 summit.wind.calc run data get storage summit.wind:data temp.posM[1] 100
execute store result score p2 summit.wind.calc run data get storage summit.wind:data temp.pos3[1] 100
scoreboard players operation p2 summit.wind.calc -= p1 summit.wind.calc
execute store result score @s summit.wind.Dy store result entity @s data.summit.wind.corners.Dy double 0.01 run scoreboard players operation p1 summit.wind.calc -= p2 summit.wind.calc
execute store result score p1 summit.wind.calc run data get storage summit.wind:data temp.posM[2] 100
execute store result score p2 summit.wind.calc run data get storage summit.wind:data temp.pos3[2] 100
scoreboard players operation p2 summit.wind.calc -= p1 summit.wind.calc
execute store result score @s summit.wind.Dz store result entity @s data.summit.wind.corners.Dz double 0.01 run scoreboard players operation p1 summit.wind.calc -= p2 summit.wind.calc
