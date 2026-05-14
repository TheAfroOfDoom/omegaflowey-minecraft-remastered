$scoreboard players set #summit.climbing.math.angle_1 summit.climbing.int $(angle_1)
$scoreboard players set #summit.climbing.math.angle_2 summit.climbing.int $(angle_2)
scoreboard players operation #summit.climbing.math.angle_3 summit.climbing.int = #summit.climbing.math.angle_2 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_4 summit.climbing.int = #summit.climbing.math.angle_2 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_3 summit.climbing.int += 360 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_4 summit.climbing.int -= 360 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_dif_1 summit.climbing.int = #summit.climbing.math.angle_1 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_dif_1 summit.climbing.int -= #summit.climbing.math.angle_2 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_dif_2 summit.climbing.int = #summit.climbing.math.angle_1 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_dif_2 summit.climbing.int -= #summit.climbing.math.angle_3 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_dif_3 summit.climbing.int = #summit.climbing.math.angle_1 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_dif_3 summit.climbing.int -= #summit.climbing.math.angle_4 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_dif_1_positive summit.climbing.int = #summit.climbing.math.angle_dif_1 summit.climbing.int
execute if score #summit.climbing.math.angle_dif_1_positive summit.climbing.int matches ..0 run scoreboard players operation #summit.climbing.math.angle_dif_1_positive summit.climbing.int *= neg_1 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_dif_2_positive summit.climbing.int = #summit.climbing.math.angle_dif_2 summit.climbing.int
execute if score #summit.climbing.math.angle_dif_2_positive summit.climbing.int matches ..0 run scoreboard players operation #summit.climbing.math.angle_dif_2_positive summit.climbing.int *= neg_1 summit.climbing.int
scoreboard players operation #summit.climbing.math.angle_dif_3_positive summit.climbing.int = #summit.climbing.math.angle_dif_3 summit.climbing.int
execute if score #summit.climbing.math.angle_dif_3_positive summit.climbing.int matches ..0 run scoreboard players operation #summit.climbing.math.angle_dif_3_positive summit.climbing.int *= neg_1 summit.climbing.int
execute if score #summit.climbing.math.angle_dif_1_positive summit.climbing.int <= #summit.climbing.math.angle_dif_2_positive summit.climbing.int if score #summit.climbing.math.angle_dif_1_positive summit.climbing.int <= #summit.climbing.math.angle_dif_3_positive summit.climbing.int run scoreboard players operation #summit.climbing.math.angle_dif_final summit.climbing.int = #summit.climbing.math.angle_dif_1 summit.climbing.int
execute if score #summit.climbing.math.angle_dif_2_positive summit.climbing.int <= #summit.climbing.math.angle_dif_1_positive summit.climbing.int if score #summit.climbing.math.angle_dif_2_positive summit.climbing.int <= #summit.climbing.math.angle_dif_3_positive summit.climbing.int run scoreboard players operation #summit.climbing.math.angle_dif_final summit.climbing.int = #summit.climbing.math.angle_dif_2 summit.climbing.int
execute if score #summit.climbing.math.angle_dif_3_positive summit.climbing.int <= #summit.climbing.math.angle_dif_1_positive summit.climbing.int if score #summit.climbing.math.angle_dif_3_positive summit.climbing.int <= #summit.climbing.math.angle_dif_2_positive summit.climbing.int run scoreboard players operation #summit.climbing.math.angle_dif_final summit.climbing.int = #summit.climbing.math.angle_dif_3 summit.climbing.int
execute store result storage summit.climbing:master util.shortest_angle_difference int -1 run scoreboard players get #summit.climbing.math.angle_dif_final summit.climbing.int
return run data get storage summit.climbing:master util.shortest_angle_difference
