execute unless score @s aj.finger_gun.rig_loaded = @s aj.finger_gun.rig_loaded run function animated_java:finger_gun/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:finger_gun/zzzzzzzz/animations/tick
function #animated_java:finger_gun/on_tick/as_root