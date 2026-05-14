$kill @n[type=minecraft:marker,tag=summit.climbing.climber,nbt={data:{UUID:"$(UUID)"}},distance=..32]
$kill @n[type=minecraft:block_display,tag=summit.climbing.seat,nbt={data:{UUID:"$(UUID)"}},distance=..32]
$execute as @n[type=minecraft:mannequin,tag=summit.climbing.mannequin,nbt={profile:{id:$(UUID)}},distance=..32] at @s run function summit.climbing:util/clean_kill
