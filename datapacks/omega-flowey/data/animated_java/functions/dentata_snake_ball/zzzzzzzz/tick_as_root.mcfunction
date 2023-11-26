execute unless score @s aj.dentata_snake_ball.rig_loaded = @s aj.dentata_snake_ball.rig_loaded run function animated_java:dentata_snake_ball/zzzzzzzz/on_load
scoreboard players add @s aj.life_time 1
execute at @s on passengers run tp @s ~ ~ ~ ~ ~
function animated_java:dentata_snake_ball/zzzzzzzz/animations/tick
function #animated_java:dentata_snake_ball/on_tick/as_root