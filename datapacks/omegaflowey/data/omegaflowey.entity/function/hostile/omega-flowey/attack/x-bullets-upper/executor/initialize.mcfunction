# check for pre-existence of at least one upper_eye model
scoreboard players set #attack.x-bullets-upper.upper_eye_exists attack.flag 1
$execute \
  unless entity $(attack_upper_eye_right_uuid) \
  unless entity $(attack_upper_eye_left_uuid) \
  run scoreboard players set #attack.x-bullets-upper.upper_eye_exists attack.flag 0

# throw an error if no model exists
execute if score #attack.x-bullets-upper.upper_eye_exists attack.flag matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-shared/executor/initialize/error { "type": "upper" }
execute if score #attack.x-bullets-upper.upper_eye_exists attack.flag matches 0 run return fail

function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"X-Bullets-Upper Executor"'

$execute at $(attack_upper_eye_right_locator_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/initialize/effects
$execute at $(attack_upper_eye_left_locator_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/initialize/effects

# Set scores
scoreboard players operation @s omegaflowey.attack.clock.i -= #attack-x-bullets-upper attack.executor.clock.delay

scoreboard players operation @s attack.executor.clock.length = #attack-x-bullets-upper attack.executor.clock.length
scoreboard players operation @s attack.executor.rate = #attack-x-bullets-upper attack.executor.rate
scoreboard players operation @s attack.indicator.total = #attack-x-bullets-upper attack.indicator.total

scoreboard players operation @s attack.indicator.remaining = @s attack.indicator.total

# Add tags
tag @s add x-bullets-upper
