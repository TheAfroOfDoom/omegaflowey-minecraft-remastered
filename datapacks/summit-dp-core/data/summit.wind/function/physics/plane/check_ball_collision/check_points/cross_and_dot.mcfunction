execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get a summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get b summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score Vx summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get c summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get d summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score g summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation Vx summit.wind.calc -= g summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get c summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get e summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score Vy summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get f summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get b summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score g summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation Vy summit.wind.calc -= g summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get f summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get d summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score Vz summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get a summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get e summit.wind.calc
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score g summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation Vz summit.wind.calc -= g summit.wind.calc
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get Vx summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get @s summit.wind.nx
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score x summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get Vy summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get @s summit.wind.ny
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score y summit.wind.calc run data get storage summit.wind:data temp.value 100
execute store result storage summit.wind:data temp.mul.a double 0.01 run scoreboard players get Vz summit.wind.calc
execute store result storage summit.wind:data temp.mul.b double 0.01 run scoreboard players get @s summit.wind.nz
execute summon item_display run function summit.wind:math/zzz_helpers/multiply/calculate with storage summit.wind:data temp.mul
execute store result score z summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x summit.wind.calc += y summit.wind.calc
return run scoreboard players operation x summit.wind.calc += z summit.wind.calc
