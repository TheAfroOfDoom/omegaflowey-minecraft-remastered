data modify storage summit.wind:data temp.pos.x set from storage summit.wind:data temp.v[0]
data modify storage summit.wind:data temp.pos.y set from storage summit.wind:data temp.v[1]
data modify storage summit.wind:data temp.pos.z set from storage summit.wind:data temp.v[2]
function summit.wind:math/distance
data modify storage summit.wind:data temp.value set from storage summit.wind:data temp.distance
