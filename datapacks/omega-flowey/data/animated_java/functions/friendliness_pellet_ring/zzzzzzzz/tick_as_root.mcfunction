execute unless score @s aj.friendliness_pellet_ring.rig_loaded = @s aj.friendliness_pellet_ring.rig_loaded run function animated_java:friendliness_pellet_ring/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:friendliness_pellet_ring/zzzzzzzz/animations/tick
function #animated_java:friendliness_pellet_ring/on_tick/as_root