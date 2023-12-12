execute unless score @s aj.homing_vine.rig_loaded = @s aj.homing_vine.rig_loaded run function animated_java:homing_vine/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:homing_vine/zzzzzzzz/animations/tick
function #animated_java:homing_vine/on_tick/as_root