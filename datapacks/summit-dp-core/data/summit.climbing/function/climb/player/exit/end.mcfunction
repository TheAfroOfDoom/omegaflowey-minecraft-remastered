$kill @n[type=minecraft:block_display,tag=summit.climbing.seat,nbt={data:{UUID:"$(UUID)"}},distance=..32]
$kill @n[type=minecraft:marker,tag=summit.climbing.climber,nbt={data:{UUID:"$(UUID)"}},distance=..32]
$execute as @n[type=minecraft:mannequin,tag=summit.climbing.mannequin,nbt={profile:{id:$(UUID)}},distance=..32] run function summit.climbing:util/clean_kill
function summit.climbing:climb/player/exit/reset_attributes
tp @s ~ ~-0.7 ~
tag @s remove summit.climbing.player
tag @s remove summit.climbing.end
