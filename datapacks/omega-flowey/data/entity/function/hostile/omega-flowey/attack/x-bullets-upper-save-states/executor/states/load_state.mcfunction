execute store result score @s attack.clock.i run data get entity @s data.scores.attack_clock_i
execute store result score @s attack.indicator.remaining run data get entity @s data.scores.attack_indicator_remaining

tag @s add has-loaded-state
