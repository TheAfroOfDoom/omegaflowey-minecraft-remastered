data modify storage summit.wind:data temp.mul.a set from storage summit.wind:data temp.v1[0]
data modify storage summit.wind:data temp.mul.b set from storage summit.wind:data temp.v2[0]
function summit.wind:math/multiply
execute store result score x summit.wind.calc run data get storage summit.wind:data temp.value 100
data modify storage summit.wind:data temp.mul.a set from storage summit.wind:data temp.v1[1]
data modify storage summit.wind:data temp.mul.b set from storage summit.wind:data temp.v2[1]
function summit.wind:math/multiply
execute store result score y summit.wind.calc run data get storage summit.wind:data temp.value 100
data modify storage summit.wind:data temp.mul.a set from storage summit.wind:data temp.v1[2]
data modify storage summit.wind:data temp.mul.b set from storage summit.wind:data temp.v2[2]
function summit.wind:math/multiply
execute store result score z summit.wind.calc run data get storage summit.wind:data temp.value 100
scoreboard players operation x summit.wind.calc += y summit.wind.calc
scoreboard players operation x summit.wind.calc += z summit.wind.calc
