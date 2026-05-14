$execute as @n[type=minecraft:marker,tag=summit.climbing.climber,nbt={data:{UUID:"$(player_uuid)"}}] at @s run function summit.climbing:climb/move/single_space/init {direction:"$(input)"}
