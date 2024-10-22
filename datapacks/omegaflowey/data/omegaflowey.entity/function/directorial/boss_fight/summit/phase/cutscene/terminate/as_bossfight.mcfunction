# If cutscene doesn't have a specific terminate function, just proceed to attack phase

# Remove tags
tag @s remove boss_fight.phase.cutscene

# Kill DEMO title
kill @e[ \
  x=-156.5, y=43.0625, z=76.0, distance=..0.01, \
  type=minecraft:text_display, \
  tag=demo-intro-title, \
  limit=1 \
]

# Begin animating largesidevines/nose at full speed
$execute as $(large_side_vine_left_uuid) run function omegaflowey.entity:hostile/omega-flowey/animate/large_side_vine/resume_normal_from_slow/left
$execute as $(large_side_vine_right_uuid) run function omegaflowey.entity:hostile/omega-flowey/animate/large_side_vine/resume_normal_from_slow/right
$execute as $(model_nose_uuid) run function animated_java:omegaflowey_nose/animations/move/tween { duration: 1, to_frame: 1 }

# Re-animate main Omega Flowey models
scoreboard players set #omegaflowey.bossfight.skip_reanimate_largesidevine omegaflowey.global.flag 1
scoreboard players set #omegaflowey.bossfight.skip_reanimate_nose omegaflowey.global.flag 1
function omegaflowey.entity:hostile/omega-flowey/animate
scoreboard players set #omegaflowey.bossfight.skip_reanimate_nose omegaflowey.global.flag 0
scoreboard players set #omegaflowey.bossfight.skip_reanimate_largesidevine omegaflowey.global.flag 0

# Next phase
function omegaflowey.entity:directorial/boss_fight/summit/phase/attack/initialize
