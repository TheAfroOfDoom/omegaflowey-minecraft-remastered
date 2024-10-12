## Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
# TODO(46): validate these attack parameters
scoreboard players set #attack-x-bullets-lower omegaflowey.attack.bullets.clock.delay 1
scoreboard players set #attack-x-bullets-lower omegaflowey.attack.bullets.total 7
scoreboard players set #attack-x-bullets-lower omegaflowey.attack.cone 105
scoreboard players set #attack-x-bullets-lower omegaflowey.attack.executor.clock.delay 8
scoreboard players set #attack-x-bullets-lower omegaflowey.attack.executor.clock.length 56
scoreboard players set #attack-x-bullets-lower omegaflowey.attack.executor.rate 8
scoreboard players set #attack-x-bullets-lower omegaflowey.attack.indicator.total 7
scoreboard players set #attack-x-bullets-lower attack.speed.z 150

scoreboard players set #attack-x-bullets-lower.tween_duration math.const 3
