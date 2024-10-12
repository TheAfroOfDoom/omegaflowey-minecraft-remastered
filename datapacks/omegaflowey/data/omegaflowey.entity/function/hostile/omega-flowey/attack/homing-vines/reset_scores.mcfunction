## Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
# TODO(41): validate these attack parameters
scoreboard players set #attack-homing-vines omegaflowey.attack.bullets.total 1
# (13 / 1) + 1 = 13 + 1 = 14 indicators
scoreboard players set #attack-homing-vines omegaflowey.attack.executor.clock.length 13
scoreboard players set #attack-homing-vines omegaflowey.attack.executor.rate 1
scoreboard players set #attack-homing-vines omegaflowey.attack.executor.repeat.count.total 1
scoreboard players set #attack-homing-vines omegaflowey.attack.executor.repeat.delay 12
scoreboard players set #attack-homing-vines omegaflowey.attack.indicator.clock.delay 6
scoreboard players set #attack-homing-vines attack.speed.z 500
