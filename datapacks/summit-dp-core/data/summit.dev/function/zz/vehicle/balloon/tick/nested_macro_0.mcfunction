$tp @s ^$(x) ^$(y) ^$(z)
execute unless entity @s[tag=summit.vehicle.taken] run return 0
execute if predicate summit.dev:vehicle/seats/has_player run return 1
$execute as $(parent) if entity @s[tag=summit.vehicle.seats_spawned] run return run function summit.dev:zz/vehicle/balloon/tick/remove_taken
$ride $(passenger) mount @s
