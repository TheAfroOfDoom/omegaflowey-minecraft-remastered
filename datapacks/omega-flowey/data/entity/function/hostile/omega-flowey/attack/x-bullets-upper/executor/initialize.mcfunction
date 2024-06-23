# check for pre-existence of at least one upper_eye model
scoreboard players set #attack.x-bullets-upper.upper_eye_exists attack.flag 0
execute if entity @e[type=minecraft:item_display,tag=aj.upper_eye.root] run scoreboard players set #attack.x-bullets-upper.upper_eye_exists attack.flag 1

# throw an error if no model exists
execute if score #attack.x-bullets-upper.upper_eye_exists attack.flag matches 0 run function entity:hostile/omega-flowey/attack/x-bullets-shared/executor/initialize/error { "type": "upper" }
execute if score #attack.x-bullets-upper.upper_eye_exists attack.flag matches 0 run return fail

execute at @e[tag=aj.upper_eye.locator.pupil] run function entity:hostile/omega-flowey/attack/x-bullets-upper/executor/initialize/effects

# Set scores
scoreboard players set @s attack.clock.i -1
scoreboard players operation @s attack.clock.i -= #attack-x-bullets-upper attack.executor.clock.delay

scoreboard players operation @s attack.executor.clock.length = #attack-x-bullets-upper attack.executor.clock.length
scoreboard players operation @s attack.executor.rate = #attack-x-bullets-upper attack.executor.rate
scoreboard players operation @s attack.indicator.total = #attack-x-bullets-upper attack.indicator.total

scoreboard players operation @s attack.indicator.remaining = @s attack.indicator.total

# Remove tags
tag @s remove attack-executor-new
