execute on attacker unless predicate summit.dev:zz/vehicle/node/sneaking run return 0
execute on attacker run tag @s add summit.interacted
execute on vehicle on passengers if entity @s[type=marker] run function summit.dev:zz/vehicle/node/on_left_click/add_to_track with entity @s data
execute on attacker run tag @s remove summit.interacted
