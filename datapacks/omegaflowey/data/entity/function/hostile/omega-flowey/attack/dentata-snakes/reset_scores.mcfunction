## Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
# TODO(42): validate these attack parameters
# (16 / 8) + 1 = 2 + 1 = 3 indicators
scoreboard players set #attack-dentata-snakes attack.bullets.clock.delay 4
scoreboard players set #attack-dentata-snakes attack.bullets.scale 100
scoreboard players set #attack-dentata-snakes attack.bullets.total 6
scoreboard players set #attack-dentata-snakes attack.executor.clock.length 16
scoreboard players set #attack-dentata-snakes attack.executor.rate 8
scoreboard players set #attack-dentata-snakes attack.speed.z 100
