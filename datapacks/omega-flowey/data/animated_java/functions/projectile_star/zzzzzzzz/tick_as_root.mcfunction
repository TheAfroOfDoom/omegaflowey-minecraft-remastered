execute unless score @s aj.projectile_star.rig_loaded = @s aj.projectile_star.rig_loaded run function animated_java:projectile_star/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:projectile_star/zzzzzzzz/animations/tick
function #animated_java:projectile_star/on_tick/as_root