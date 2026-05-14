$execute unless entity @n[type=minecraft:block_display,distance=..8,nbt={data:{UUID:"$(UUID)"}}] run return run function summit.climbing:climb/player/exit/force_end/main with entity @s
$ride @s mount @n[type=minecraft:block_display,distance=..8,nbt={data:{UUID:"$(UUID)"}}]
