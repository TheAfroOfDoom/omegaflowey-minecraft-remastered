## Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
# TODO(60): validate these attack parameters
# (66 / 3) + 1 = 22 + 1 = 23 indicators
scoreboard players set #attack-flies attack.executor.clock.length 66
scoreboard players set #attack-flies attack.executor.rate 3
scoreboard players set #attack-flies attack.indicator.clock.delay 14
# lifespan of indicator after summoning laser
scoreboard players set #attack-flies attack.indicator.clock.length 40
scoreboard players set #attack-flies attack.speed.z 110
