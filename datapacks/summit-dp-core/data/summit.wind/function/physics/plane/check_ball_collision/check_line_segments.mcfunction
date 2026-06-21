execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get radius summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score radius_squared summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation ABx summit.wind.calc = @s summit.wind.Bx
scoreboard players operation ABy summit.wind.calc = @s summit.wind.By
scoreboard players operation ABz summit.wind.calc = @s summit.wind.Bz
scoreboard players operation APx summit.wind.calc = Px summit.wind.calc
scoreboard players operation APy summit.wind.calc = Py summit.wind.calc
scoreboard players operation APz summit.wind.calc = Pz summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation APx summit.wind.calc -= @s summit.wind.Ax
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation ABx summit.wind.calc -= @s summit.wind.Ax
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation APy summit.wind.calc -= @s summit.wind.Ay
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation ABy summit.wind.calc -= @s summit.wind.Ay
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation APz summit.wind.calc -= @s summit.wind.Az
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation ABz summit.wind.calc -= @s summit.wind.Az
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z1 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x1 summit.wind.calc += y1 summit.wind.calc
scoreboard players operation x1 summit.wind.calc += z1 summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ABx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ABy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ABz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z2 summit.wind.calc run data get storage summit.wind:data temp.value 1
scoreboard players operation x2 summit.wind.calc += y2 summit.wind.calc
scoreboard players operation x2 summit.wind.calc += z2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc /= x2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc > #0 summit.wind.data
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation x1 summit.wind.calc < #100 summit.wind.data
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ABx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ABy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ABz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z3 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x3 summit.wind.calc += @s summit.wind.Ax
scoreboard players operation y3 summit.wind.calc += @s summit.wind.Ay
scoreboard players operation z3 summit.wind.calc += @s summit.wind.Az
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation x3 summit.wind.calc -= ball_x summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score distance_squared summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation y3 summit.wind.calc -= ball_y summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y4 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation z3 summit.wind.calc -= ball_z summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z4 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation distance_squared summit.wind.calc += y4 summit.wind.calc
scoreboard players operation distance_squared summit.wind.calc += z4 summit.wind.calc
execute if score distance_squared summit.wind.calc < radius_squared summit.wind.calc run scoreboard players set inside summit.wind.calc 2
scoreboard players operation Ix summit.wind.calc = x3 summit.wind.calc
scoreboard players operation Iy summit.wind.calc = y3 summit.wind.calc
scoreboard players operation Iz summit.wind.calc = z3 summit.wind.calc
scoreboard players operation min_dist_sq summit.wind.calc = distance_squared summit.wind.calc
scoreboard players operation ACx summit.wind.calc = @s summit.wind.Cx
scoreboard players operation ACy summit.wind.calc = @s summit.wind.Cy
scoreboard players operation ACz summit.wind.calc = @s summit.wind.Cz
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get APx summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation ACx summit.wind.calc -= @s summit.wind.Ax
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get APy summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation ACy summit.wind.calc -= @s summit.wind.Ay
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get APz summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation ACz summit.wind.calc -= @s summit.wind.Az
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z1 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x1 summit.wind.calc += y1 summit.wind.calc
scoreboard players operation x1 summit.wind.calc += z1 summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ACx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ACy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ACz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z2 summit.wind.calc run data get storage summit.wind:data temp.value 1
scoreboard players operation x2 summit.wind.calc += y2 summit.wind.calc
scoreboard players operation x2 summit.wind.calc += z2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc /= x2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc > #0 summit.wind.data
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation x1 summit.wind.calc < #100 summit.wind.data
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ACx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ACy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ACz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z3 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x3 summit.wind.calc += @s summit.wind.Ax
scoreboard players operation y3 summit.wind.calc += @s summit.wind.Ay
scoreboard players operation z3 summit.wind.calc += @s summit.wind.Az
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation x3 summit.wind.calc -= ball_x summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score distance_squared summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation y3 summit.wind.calc -= ball_y summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y4 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation z3 summit.wind.calc -= ball_z summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z4 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation distance_squared summit.wind.calc += y4 summit.wind.calc
scoreboard players operation distance_squared summit.wind.calc += z4 summit.wind.calc
execute if score distance_squared summit.wind.calc < radius_squared summit.wind.calc run scoreboard players set inside summit.wind.calc 2
execute if score distance_squared summit.wind.calc < min_dist_sq summit.wind.calc run scoreboard players operation Ix summit.wind.calc = x3 summit.wind.calc
execute if score distance_squared summit.wind.calc < min_dist_sq summit.wind.calc run scoreboard players operation Iy summit.wind.calc = y3 summit.wind.calc
execute if score distance_squared summit.wind.calc < min_dist_sq summit.wind.calc run scoreboard players operation Iz summit.wind.calc = z3 summit.wind.calc
execute if score distance_squared summit.wind.calc < min_dist_sq summit.wind.calc run scoreboard players operation min_dist_sq summit.wind.calc = distance_squared summit.wind.calc
scoreboard players operation CBx summit.wind.calc = @s summit.wind.Cx
scoreboard players operation CBy summit.wind.calc = @s summit.wind.Cy
scoreboard players operation CBz summit.wind.calc = @s summit.wind.Cz
scoreboard players operation BPx summit.wind.calc = Px summit.wind.calc
scoreboard players operation BPy summit.wind.calc = Py summit.wind.calc
scoreboard players operation BPz summit.wind.calc = Pz summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation BPx summit.wind.calc -= @s summit.wind.Bx
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation CBx summit.wind.calc -= @s summit.wind.Bx
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation BPy summit.wind.calc -= @s summit.wind.By
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation CBy summit.wind.calc -= @s summit.wind.By
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation BPz summit.wind.calc -= @s summit.wind.Bz
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation CBz summit.wind.calc -= @s summit.wind.Bz
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z1 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x1 summit.wind.calc += y1 summit.wind.calc
scoreboard players operation x1 summit.wind.calc += z1 summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CBx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CBy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CBz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z2 summit.wind.calc run data get storage summit.wind:data temp.value 1
scoreboard players operation x2 summit.wind.calc += y2 summit.wind.calc
scoreboard players operation x2 summit.wind.calc += z2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc /= x2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc > #0 summit.wind.data
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation x1 summit.wind.calc < #100 summit.wind.data
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CBx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CBy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CBz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z3 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x3 summit.wind.calc += @s summit.wind.Bx
scoreboard players operation y3 summit.wind.calc += @s summit.wind.By
scoreboard players operation z3 summit.wind.calc += @s summit.wind.Bz
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation x3 summit.wind.calc -= ball_x summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score distance_squared summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation y3 summit.wind.calc -= ball_y summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y4 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation z3 summit.wind.calc -= ball_z summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z4 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation distance_squared summit.wind.calc += y4 summit.wind.calc
scoreboard players operation distance_squared summit.wind.calc += z4 summit.wind.calc
execute if score distance_squared summit.wind.calc < radius_squared summit.wind.calc run scoreboard players set inside summit.wind.calc 2
execute if score distance_squared summit.wind.calc < min_dist_sq summit.wind.calc run scoreboard players operation Ix summit.wind.calc = x3 summit.wind.calc
execute if score distance_squared summit.wind.calc < min_dist_sq summit.wind.calc run scoreboard players operation Iy summit.wind.calc = y3 summit.wind.calc
execute if score distance_squared summit.wind.calc < min_dist_sq summit.wind.calc run scoreboard players operation Iz summit.wind.calc = z3 summit.wind.calc
execute if score distance_squared summit.wind.calc < min_dist_sq summit.wind.calc run scoreboard players operation min_dist_sq summit.wind.calc = distance_squared summit.wind.calc
execute unless entity @s[tag=summit.wind.collision_triangle] run function summit.wind:physics/plane/check_ball_collision/parallelogram/line_segments
