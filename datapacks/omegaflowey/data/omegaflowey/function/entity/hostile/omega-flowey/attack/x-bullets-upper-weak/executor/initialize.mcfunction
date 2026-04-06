# check for pre-existence of at least one upper_eye model
scoreboard players set #omegaflowey.attack.x-bullets-upper-weak.upper_eye_exists omegaflowey.attack.flag 1
$execute \
  unless entity $(attack_upper_eye_right_uuid) \
  unless entity $(attack_upper_eye_left_uuid) \
  run scoreboard players set #omegaflowey.attack.x-bullets-upper-weak.upper_eye_exists omegaflowey.attack.flag 0

# throw an error if no model exists
execute if score #omegaflowey.attack.x-bullets-upper-weak.upper_eye_exists omegaflowey.attack.flag matches 0 run function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-shared/executor/initialize/error { "type": "upper" }
execute if score #omegaflowey.attack.x-bullets-upper-weak.upper_eye_exists omegaflowey.attack.flag matches 0 run return fail

function omegaflowey:main/telemetry/bossfight/tag/start { name: "attack.x_bullets_upper_weak" }

function omegaflowey:entity/hostile/omega-flowey/attack/shared/executor/initialize

data modify entity @s CustomName set value '"X-Bullets-Upper-Weak Executor"'

$execute at $(attack_upper_eye_right_locator_uuid) run function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper/executor/initialize/effects
$execute at $(attack_upper_eye_left_locator_uuid) run function omegaflowey:entity/hostile/omega-flowey/attack/x-bullets-upper/executor/initialize/effects

$execute as $(attack_upper_eye_right_uuid) run function animated_java:omegaflowey_upper_eye/variants/white/apply
$execute as $(attack_upper_eye_left_uuid) run function animated_java:omegaflowey_upper_eye/variants/white/apply

# Set scores
scoreboard players remove @s omegaflowey.attack.clock.i 12

scoreboard players set @s omegaflowey.attack.executor.clock.length 30
scoreboard players set @s omegaflowey.attack.executor.rate 7
scoreboard players set @s omegaflowey.attack.indicator.total 4

scoreboard players operation @s omegaflowey.attack.indicator.remaining = @s omegaflowey.attack.indicator.total

scoreboard players set #omegaflowey.attack.x-bullets-upper-weak omegaflowey.attack.speed.z 120

# Add tags
tag @s add x-bullets-upper-weak
