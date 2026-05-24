execute unless entity @s[tag=summit.climbing.player] unless entity @s[tag=summit.climbing.entering] unless entity @s[tag=summit.climbing.end] run return fail
execute on vehicle run kill @s[tag=summit.climbing.seat]
function summit.climbing:climb/player/exit/force_end/main with entity @s
