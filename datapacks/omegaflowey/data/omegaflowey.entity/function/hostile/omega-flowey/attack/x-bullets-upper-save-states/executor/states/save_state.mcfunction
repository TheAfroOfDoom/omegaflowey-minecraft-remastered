execute store result entity @s data.scores.attack_clock_i int 1 run scoreboard players get @s omegaflowey.attack.clock.i
execute store result entity @s data.scores.attack_indicator_remaining int 1 run scoreboard players get @s omegaflowey.attack.indicator.remaining

tag @s add should-keep-original-entity

# executor also handles saving upper_eye model animation states (models will be symmetrical, so their frame scores will be identical)
execute store result entity @s data.scores.aj_upper_eye_aj_frame int 1 run scoreboard players get @e[tag=aj.omegaflowey_upper_eye.root,limit=1] aj.frame
