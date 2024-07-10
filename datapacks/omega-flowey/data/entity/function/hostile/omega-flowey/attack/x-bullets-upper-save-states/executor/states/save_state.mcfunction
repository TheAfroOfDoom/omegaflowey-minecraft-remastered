execute store result entity @s data.scores.attack_clock_i int 1 run scoreboard players get @s attack.clock.i
execute store result entity @s data.scores.attack_indicator_remaining int 1 run scoreboard players get @s attack.indicator.remaining

tag @s add should-keep-original-entity
