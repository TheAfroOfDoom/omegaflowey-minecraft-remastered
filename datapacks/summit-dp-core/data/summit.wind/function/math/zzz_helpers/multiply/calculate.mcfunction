$data modify storage summit.wind:data temp.var set value [0f,0f,0f,$(a)f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]
$data modify entity @s transformation set value [0f,0f,0f,1f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,$(b)f]
data modify storage summit.wind:data temp.var[-1] set from entity @s transformation.translation[0]
data modify entity @s transformation set from storage summit.wind:data temp.var
data modify storage summit.wind:data temp.value set from entity @s transformation.translation[0]
data remove storage summit.wind:data temp.var
kill @s
