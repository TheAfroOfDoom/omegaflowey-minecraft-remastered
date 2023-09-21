execute unless score @s aj.tv_screen.rig_loaded = @s aj.tv_screen.rig_loaded run function animated_java:tv_screen/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:tv_screen/zzzzzzzz/animations/tick
function #animated_java:tv_screen/on_tick/as_root