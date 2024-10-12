# check for pre-existence of at least one upper_eye model
scoreboard players set #omegaflowey.attack.x-bullets-upper.upper_eye_exists omegaflowey.attack.flag 1
$execute \
  unless entity $(attack_upper_eye_right_uuid) \
  unless entity $(attack_upper_eye_left_uuid) \
  run scoreboard players set #omegaflowey.attack.x-bullets-upper.upper_eye_exists omegaflowey.attack.flag 0

# throw an error if no model exists
execute if score #omegaflowey.attack.x-bullets-upper.upper_eye_exists omegaflowey.attack.flag matches 0 run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-shared/executor/initialize/error { "type": "upper" }
execute if score #omegaflowey.attack.x-bullets-upper.upper_eye_exists omegaflowey.attack.flag matches 0 run return fail

function omegaflowey.entity:hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"X-Bullets-Upper Executor"'

$execute at $(attack_upper_eye_right_locator_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/initialize/effects
$execute at $(attack_upper_eye_left_locator_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-upper/executor/initialize/effects

# Set scores
scoreboard players operation @s omegaflowey.attack.clock.i -= #omegaflowey.attack.x-bullets-upper omegaflowey.attack.executor.clock.delay

scoreboard players operation @s omegaflowey.attack.executor.clock.length = #omegaflowey.attack.x-bullets-upper omegaflowey.attack.executor.clock.length
scoreboard players operation @s omegaflowey.attack.executor.rate = #omegaflowey.attack.x-bullets-upper omegaflowey.attack.executor.rate
scoreboard players operation @s omegaflowey.attack.indicator.total = #omegaflowey.attack.x-bullets-upper omegaflowey.attack.indicator.total

scoreboard players operation @s omegaflowey.attack.indicator.remaining = @s omegaflowey.attack.indicator.total

# Add tags
tag @s add x-bullets-upper
