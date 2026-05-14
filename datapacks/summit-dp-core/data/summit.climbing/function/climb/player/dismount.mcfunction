function summit.climbing:climb/player/reseat with entity @s
execute if entity @s[tag=summit.climbing.end] run return 0
$execute at @n[tag=summit.climbing.climber,type=minecraft:marker,distance=..32,nbt={data:{UUID:"$(UUID)"}}] positioned ^ ^-0.7 ^-0.5 run function summit.climbing:climb/player/exit/end_sequence/start
