## Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
# TODO: verify this indicator count
# (66 / 3) + 1 = 22 + 1 = 23 indicators
scoreboard players set #attack-finger-guns attack.executor.clock.length 66
scoreboard players set #attack-finger-guns attack.executor.rate 3
scoreboard players set #attack-finger-guns attack.indicator.clock.delay 14
# lifespan of indicator after summoning laser
scoreboard players set #attack-finger-guns attack.indicator.clock.length 69
scoreboard players set #attack-finger-guns attack.speed.z 110
