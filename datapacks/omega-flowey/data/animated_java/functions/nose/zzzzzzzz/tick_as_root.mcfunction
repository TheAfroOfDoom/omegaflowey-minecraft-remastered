execute unless score @s aj.nose.rig_loaded = @s aj.nose.rig_loaded run function animated_java:nose/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:nose/zzzzzzzz/animations/tick
function #animated_java:nose/on_tick/as_root