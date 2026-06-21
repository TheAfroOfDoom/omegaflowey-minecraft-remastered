$tp @s ^$(x) ^1 ^$(z)
execute unless entity @s[tag=summit.trolley.taken] run return 0
execute if predicate summit.dev:zz/vehicle/trolley/has_player run return 1
$data remove entity $(parent) data.taken_seats[{x: $(x), z: $(z)}]
tag @s remove summit.trolley.taken
$execute as $(parent) if entity @s[tag=summit.state.effects] run return 2
execute at @s run kill @e[tag=summit.trolley.seat, distance=..0.1]
