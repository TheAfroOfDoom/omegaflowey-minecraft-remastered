# TODO this needs to NOT be a distance check
execute at @e[tag=aj.upper_eye.locator.pupil] run function entity:hostile/omega-flowey/attack/x-bullets-upper/executor/initialize/effects

# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-x-bullets-upper attack.executor.clock.delay

scoreboard players operation @s attack.clock.length = #attack-x-bullets-upper attack.clock.length
scoreboard players operation @s attack.executor.rate = #attack-x-bullets-upper attack.executor.rate
scoreboard players operation @s attack.indicator.total = #attack-x-bullets-upper attack.indicator.total

scoreboard players operation @s attack.indicator.remaining = @s attack.indicator.total

# Remove tags
tag @s remove attack-executor-new
