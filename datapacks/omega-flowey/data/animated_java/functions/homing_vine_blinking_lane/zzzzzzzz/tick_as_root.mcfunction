execute unless score @s aj.homing_vine_blinking_lane.rig_loaded = @s aj.homing_vine_blinking_lane.rig_loaded run function animated_java:homing_vine_blinking_lane/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:homing_vine_blinking_lane/zzzzzzzz/animations/tick
function #animated_java:homing_vine_blinking_lane/on_tick/as_root