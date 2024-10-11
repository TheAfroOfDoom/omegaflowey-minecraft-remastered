# If cutscene doesn't have a specific terminate function, just proceed to attack phase

# Remove tags
tag @s remove boss_fight.phase.cutscene

# Set arena box variant back to default
$execute as $(arena_box_uuid) run function animated_java:arena_box/variants/default/apply

# Begin animating largesidevines/nose at full speed
execute as @e[ \
  x=-186, dx=61, y=12, dy=44, z=47, dz=91, \
  type=minecraft:item_display, \
  tag=aj.large_side_vine.root, \
  tag=omega-flowey-remastered, \
  limit=2 \
] run function entity:hostile/omega-flowey/animate/large_side_vine/resume_normal_from_slow
execute as @e[ \
  x=-186, dx=61, y=12, dy=44, z=47, dz=91, \
  type=minecraft:item_display, \
  tag=aj.nose.root, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function animated_java:nose/animations/move/tween { duration: 1, to_frame: 1 }

# Re-animate main Omega Flowey models
scoreboard players set #omegaflowey.bossfight.skip_reanimate_largesidevine global.flag 1
scoreboard players set #omegaflowey.bossfight.skip_reanimate_nose global.flag 1
function entity:hostile/omega-flowey/animate
scoreboard players set #omegaflowey.bossfight.skip_reanimate_nose global.flag 0
scoreboard players set #omegaflowey.bossfight.skip_reanimate_largesidevine global.flag 0

# Next phase
function entity:directorial/boss_fight/summit/phase/attack/initialize
