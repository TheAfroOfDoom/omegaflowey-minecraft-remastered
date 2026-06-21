$data merge entity @s {transformation:[$(x)f,0f,0f,0f,$(y)f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]}
data modify storage summit.wind:data temp.distance set from entity @s transformation.scale[0]
kill @s
