scoreboard players operation CDx summit.wind.calc = @s summit.wind.Cx
scoreboard players operation CDy summit.wind.calc = @s summit.wind.Cy
scoreboard players operation CDz summit.wind.calc = @s summit.wind.Cz
scoreboard players operation DPx summit.wind.calc = Px summit.wind.calc
scoreboard players operation DPy summit.wind.calc = Py summit.wind.calc
scoreboard players operation DPz summit.wind.calc = Pz summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation DPx summit.wind.calc -= @s summit.wind.Dx
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation CDx summit.wind.calc -= @s summit.wind.Dx
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation DPy summit.wind.calc -= @s summit.wind.Dy
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation CDy summit.wind.calc -= @s summit.wind.Dy
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation DPz summit.wind.calc -= @s summit.wind.Dz
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation CDz summit.wind.calc -= @s summit.wind.Dz
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z1 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x1 summit.wind.calc += y1 summit.wind.calc
scoreboard players operation x1 summit.wind.calc += z1 summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CDx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CDy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CDz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z2 summit.wind.calc run data get storage summit.wind:data temp.value 1
scoreboard players operation x2 summit.wind.calc += y2 summit.wind.calc
scoreboard players operation x2 summit.wind.calc += z2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc /= x2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc > #0 summit.wind.data
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation x1 summit.wind.calc < #100 summit.wind.data
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CDx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CDy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get CDz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z3 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x3 summit.wind.calc += @s summit.wind.Dx
scoreboard players operation y3 summit.wind.calc += @s summit.wind.Dy
scoreboard players operation z3 summit.wind.calc += @s summit.wind.Dz
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
scoreboard players operation ADx summit.wind.calc = @s summit.wind.Ax
scoreboard players operation ADy summit.wind.calc = @s summit.wind.Ay
scoreboard players operation ADz summit.wind.calc = @s summit.wind.Az
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get DPx summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation ADx summit.wind.calc -= @s summit.wind.Dx
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get DPy summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation ADy summit.wind.calc -= @s summit.wind.Dy
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y1 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get DPz summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players operation ADz summit.wind.calc -= @s summit.wind.Dz
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z1 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x1 summit.wind.calc += y1 summit.wind.calc
scoreboard players operation x1 summit.wind.calc += z1 summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ADx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ADy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y2 summit.wind.calc run data get storage summit.wind:data temp.value 1
execute store result storage summit.wind:data temp.mul.a double 0.01 store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ADz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z2 summit.wind.calc run data get storage summit.wind:data temp.value 1
scoreboard players operation x2 summit.wind.calc += y2 summit.wind.calc
scoreboard players operation x2 summit.wind.calc += z2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc /= x2 summit.wind.calc
scoreboard players operation x1 summit.wind.calc > #0 summit.wind.data
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players operation x1 summit.wind.calc < #100 summit.wind.data
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ADx summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ADy summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y3 summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get ADz summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z3 summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x3 summit.wind.calc += @s summit.wind.Dx
scoreboard players operation y3 summit.wind.calc += @s summit.wind.Dy
scoreboard players operation z3 summit.wind.calc += @s summit.wind.Dz
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
