## Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
scoreboard players set #attack-friendliness-pellets attack.bullets.clock.delay 8
scoreboard players set #attack-friendliness-pellets attack.bullets.total 10
scoreboard players set #attack-friendliness-pellets attack.clock.delay 16
# (42 / 14) + 1 = 3 + 1 = 4 indicators
scoreboard players set #attack-friendliness-pellets attack.executor.clock.length 42
scoreboard players set #attack-friendliness-pellets attack.executor.rate 14
scoreboard players set #attack-friendliness-pellets attack.indicator.radius 3
scoreboard players set #attack-friendliness-pellets attack.speed.z 100
