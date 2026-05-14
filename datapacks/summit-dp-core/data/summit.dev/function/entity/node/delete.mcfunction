scoreboard players reset @s
execute on passengers run kill @s
kill @s
playsound minecraft:entity.chicken.egg ui @a ~ ~ ~ 1 0.55
particle minecraft:poof ~ ~0.5 ~ 0 0 0 0.2 25
$data remove storage summit:root dev.nodeList[{id:$(id)}]
