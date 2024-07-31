## Set fake player scores back to defaults (if they were changed by a pre-initialize attack function)
# TODO(46): validate these attack parameters
# TODO: do the thing
scoreboard players set #attack-x-bullets-lower attack.bullets.clock.delay 1
scoreboard players set #attack-x-bullets-lower attack.bullets.total 7
scoreboard players set #attack-x-bullets-lower attack.cone 20
scoreboard players set #attack-x-bullets-lower attack.executor.clock.delay 8
scoreboard players set #attack-x-bullets-lower attack.executor.clock.length 56
scoreboard players set #attack-x-bullets-lower attack.executor.rate 8
scoreboard players set #attack-x-bullets-lower attack.indicator.total 7
scoreboard players set #attack-x-bullets-lower attack.speed.z 150

scoreboard players set #attack-x-bullets-lower.tween_duration math.const 3
