execute store result score Ax summit.wind.calc run data get storage summit.wind:data temp.pos1[0] 100
execute store result score Ay summit.wind.calc run data get storage summit.wind:data temp.pos1[1] 100
execute store result score Az summit.wind.calc run data get storage summit.wind:data temp.pos1[2] 100
execute store result score Bx summit.wind.calc run data get storage summit.wind:data temp.pos2[0] 100
execute store result score By summit.wind.calc run data get storage summit.wind:data temp.pos2[1] 100
execute store result score Bz summit.wind.calc run data get storage summit.wind:data temp.pos2[2] 100
data merge storage summit.wind:data {temp: {v: [0.0d, 0.0d, 0.0d]}}
execute store result storage summit.wind:data temp.v[0] double 0.01 run scoreboard players operation Ax summit.wind.calc += Bx summit.wind.calc
execute store result storage summit.wind:data temp.v[1] double 0.01 run scoreboard players operation Ay summit.wind.calc += By summit.wind.calc
execute store result storage summit.wind:data temp.v[2] double 0.01 run scoreboard players operation Az summit.wind.calc += Bz summit.wind.calc
