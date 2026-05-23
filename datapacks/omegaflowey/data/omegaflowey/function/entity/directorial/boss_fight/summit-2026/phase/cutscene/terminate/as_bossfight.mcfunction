# If cutscene doesn't have a specific terminate function, just proceed to attack phase

# Remove tags
tag @s remove boss_fight.phase.cutscene

# Kill DEMO title
# NOTE: TAG_SUMMIT_2026_HARDCODED
kill @e[ \
  x=67.5, y=26.0625, z=-14.5, distance=..0.01, \
  type=minecraft:text_display, \
  tag=demo-intro-title, \
  limit=1 \
]

# Begin animating largesidevines/nose at full speed
$execute as $(large_side_vine_left_uuid) run function omegaflowey:entity/hostile/omega-flowey/animate/large_side_vine/resume_normal_from_slow/left
$execute as $(large_side_vine_right_uuid) run function omegaflowey:entity/hostile/omega-flowey/animate/large_side_vine/resume_normal_from_slow/right
$execute as $(model_nose_uuid) run function aj:omegaflowey_nose/animations/omegaflowey_move/tween { duration: 1, to_frame: 1 }

# Re-animate main Omega Flowey models
scoreboard players set #omegaflowey.bossfight.skip_reanimate_largesidevine omegaflowey.global.flag 1
scoreboard players set #omegaflowey.bossfight.skip_reanimate_nose omegaflowey.global.flag 1
function omegaflowey:entity/hostile/omega-flowey/animate
scoreboard players set #omegaflowey.bossfight.skip_reanimate_nose omegaflowey.global.flag 0
scoreboard players set #omegaflowey.bossfight.skip_reanimate_largesidevine omegaflowey.global.flag 0

# Next phase
function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/attack/initialize
