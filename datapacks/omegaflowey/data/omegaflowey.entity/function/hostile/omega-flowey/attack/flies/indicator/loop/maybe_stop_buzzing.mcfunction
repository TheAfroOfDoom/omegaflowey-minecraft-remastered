## Stop buzzing sound (if this is the only indicator active)
scoreboard players set #omegaflowey.attack.flies.indicator_count omegaflowey.math.0 0
execute as @e[tag=attack-indicator,tag=flies] run scoreboard players add #omegaflowey.attack.flies.indicator_count omegaflowey.math.0 1
execute if score #omegaflowey.attack.flies.indicator_count omegaflowey.math.0 matches 1 run stopsound @a hostile omega-flowey:attack.flies.buzzing
