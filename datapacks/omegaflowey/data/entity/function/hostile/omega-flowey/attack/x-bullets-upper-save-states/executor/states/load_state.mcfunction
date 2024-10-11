execute store result score @s attack.clock.i run data get entity @s data.scores.attack_clock_i
execute store result score @s attack.indicator.remaining run data get entity @s data.scores.attack_indicator_remaining

tag @s add has-loaded-state

# executor also handles loading upper_eye model animation states (models will be symmetrical, so their frame scores will be identical)
execute store result score #attack-x-bullets-upper-save-states aj.frame run data get entity @s data.scores.aj_upper_eye_aj_frame
execute as @e[tag=aj.upper_eye.root] run function entity:hostile/omega-flowey/attack/x-bullets-upper-save-states/executor/states/load_state/upper_eye
