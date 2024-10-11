## Stop buzzing sound (if this is the only indicator active)
scoreboard players set #attack.flies.indicator_count math.0 0
execute as @e[tag=attack-indicator,tag=flies] run scoreboard players add #attack.flies.indicator_count math.0 1
execute if score #attack.flies.indicator_count math.0 matches 1 run stopsound @a hostile omega-flowey:attack.flies.buzzing
