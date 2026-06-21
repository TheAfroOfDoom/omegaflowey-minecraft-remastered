$execute if entity @s[x=$(x), y=$(y), z=$(z), distance=..1] run return run function summit.dev:zz/vehicle/tick/on_arrival with storage summit.vehicles:temp {}
execute if score @s summit.vehicles.direction matches -1 run return run function summit.dev:zz/vehicle/tick/check_proximity/go_towards_flipped with storage summit.vehicles:temp next_node.position
$execute at @s anchored eyes facing $(x) $(y) $(z) positioned ^ ^ ^3 rotated as @s positioned ^ ^ ^15 facing entity @s eyes facing ^ ^ ^-1 run rotate @s ~ ~
$execute at @s facing $(x) $(y) $(z) positioned ^ ^ ^$(speed) run tp @s ~ ~ ~
