data merge entity @s {CustomName: "Collision Pos 3", Radius: 0.001f, Duration: 600, Tags: ["summit.wind.pos_3", "summit.wind.pos"], custom_particle: {type: "dust", color: [0.471d, 0.541d, 1.0d], scale: 1}}
data modify storage summit.wind:data temp.pos1 set from entity @n[type=area_effect_cloud, tag=summit.wind.pos_1, distance=..50] Pos
data modify storage summit.wind:data temp.pos2 set from entity @n[type=area_effect_cloud, tag=summit.wind.pos_2, distance=..50] Pos
execute store result score Ay summit.wind.calc run data get storage summit.wind:data temp.pos1[1] 10
execute store result score Cy summit.wind.calc run data get storage summit.wind:data temp.pos2[1] 10
execute if score Ay summit.wind.calc = Cy summit.wind.calc run data modify entity @s Pos[0] set from storage summit.wind:data temp.pos1[0]
execute if score Ay summit.wind.calc = Cy summit.wind.calc run data modify entity @s Pos[1] set from storage summit.wind:data temp.pos1[1]
execute if score Ay summit.wind.calc = Cy summit.wind.calc run return run data modify entity @s Pos[2] set from storage summit.wind:data temp.pos2[2]
data modify entity @s Pos[0] set from storage summit.wind:data temp.pos2[0]
data modify entity @s Pos[1] set from storage summit.wind:data temp.pos1[1]
data modify entity @s Pos[2] set from storage summit.wind:data temp.pos2[2]
