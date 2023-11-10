execute unless score @s aj.friendliness_pellet.rig_loaded = @s aj.friendliness_pellet.rig_loaded run function animated_java:friendliness_pellet/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:friendliness_pellet/zzzzzzzz/animations/tick
function #animated_java:friendliness_pellet/on_tick/as_root