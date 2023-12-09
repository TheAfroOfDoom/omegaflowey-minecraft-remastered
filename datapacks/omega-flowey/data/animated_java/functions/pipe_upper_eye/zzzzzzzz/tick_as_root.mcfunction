execute unless score @s aj.pipe_upper_eye.rig_loaded = @s aj.pipe_upper_eye.rig_loaded run function animated_java:pipe_upper_eye/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:pipe_upper_eye/zzzzzzzz/animations/tick
function #animated_java:pipe_upper_eye/on_tick/as_root