tag @s remove summit.climbing.player
tag @s remove summit.climbing.rotating
tag @s remove summit.climbing.end
tag @s remove summit.climbing.entering
function summit.climbing:climb/player/exit/reset_attributes
$execute at @n[type=minecraft:marker,tag=summit.climbing.climber,nbt={data:{UUID:"$(UUID)"}}] run function summit.climbing:climb/player/exit/force_end/kill with entity @s
