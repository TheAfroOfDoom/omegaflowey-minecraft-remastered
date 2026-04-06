# check for pre-existence of at least one lower_eye model
scoreboard players set #omegaflowey.attack.x-bullets-lower-weak.lower_eye_exists omegaflowey.attack.flag 1
$execute \
  unless entity $(attack_lower_eye_right_uuid) \
  unless entity $(attack_lower_eye_left_uuid) \
  run scoreboard players set #omegaflowey.attack.x-bullets-lower-weak.lower_eye_exists omegaflowey.attack.flag 0

# throw an error if no model exists
execute if score #omegaflowey.attack.x-bullets-lower-weak.lower_eye_exists omegaflowey.attack.flag matches 0 run function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-shared/executor/initialize/error { "type": "lower" }
execute if score #omegaflowey.attack.x-bullets-lower-weak.lower_eye_exists omegaflowey.attack.flag matches 0 run return fail

function omegaflowey:main/telemetry/bossfight/tag/start { name: "attack.x_bullets_lower_weak" }

function omegaflowey:entity/hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"X-Bullets-Lower-Weak Executor"'

$execute at $(attack_lower_eye_right_locator_uuid) run function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-lower/executor/initialize/effects
$execute at $(attack_lower_eye_left_locator_uuid) run function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-lower/executor/initialize/effects

$execute as $(attack_lower_eye_right_uuid) run function animated_java:omegaflowey_lower_eye/variants/white/apply
$execute as $(attack_lower_eye_left_uuid) run function animated_java:omegaflowey_lower_eye/variants/white/apply

# Set scores
scoreboard players remove @s omegaflowey.attack.clock.i 7

scoreboard players set @s omegaflowey.attack.executor.clock.length 91
scoreboard players set @s omegaflowey.attack.executor.rate 10
scoreboard players set @s omegaflowey.attack.indicator.total 9

scoreboard players operation @s omegaflowey.attack.indicator.remaining = @s omegaflowey.attack.indicator.total

scoreboard players set #omegaflowey.attack.x-bullets-lower-weak omegaflowey.attack.speed.z 120

# Add tags
tag @s add x-bullets-lower-weak
