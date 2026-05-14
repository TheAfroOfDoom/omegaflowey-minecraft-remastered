$execute if entity @a[distance=..32,tag=summit.climbing.player,nbt={UUID:$(UUID)}] run return 0
function summit.climbing:climb/player/exit/force_end/kill with entity @s data
