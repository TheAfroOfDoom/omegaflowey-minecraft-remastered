## Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
# TODO(60): validate these attack parameters
# (66 / 3) + 1 = 22 + 1 = 23 indicators
scoreboard players set #attack-bomb attack.executor.clock.length 66
scoreboard players set #attack-bomb attack.executor.rate 3
scoreboard players set #attack-bomb attack.indicator.clock.delay 14
scoreboard players set #attack-bomb attack.indicator.clock.length 40
scoreboard players set #attack-bomb attack.speed.z 110
