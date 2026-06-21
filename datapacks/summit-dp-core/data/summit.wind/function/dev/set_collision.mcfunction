execute unless entity @e[type=area_effect_cloud, tag=summit.wind.pos_1, distance=..50] run return run tellraw @s [{text: "Use ", color: "red"}, {text: "/function summit.wind:dev/pos1", color: "gray"}, {text: " to set corner 1", color: "red"}]
execute unless entity @e[type=area_effect_cloud, tag=summit.wind.pos_2, distance=..50] run return run tellraw @s [{text: "Use ", color: "red"}, {text: "/function summit.wind:dev/pos2", color: "gray"}, {text: " to set corner 2", color: "red"}]
execute unless entity @e[type=area_effect_cloud, tag=summit.wind.pos_3, distance=..50] summon area_effect_cloud run function summit.wind:dev/zzz_helpers/set_collision/infer_pos3
execute summon item_display run function summit.wind:dev/zzz_helpers/set_collision/new_collision
kill @e[type=area_effect_cloud, tag=summit.wind.pos, distance=..50]
data remove storage summit.wind:data temp
