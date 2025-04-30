# Blind player for transition to bright model
$effect give $(active_player_uuid) minecraft:blindness 1 0 true

execute as @e[ \
  type=minecraft:item_display, \
  tag=aj.rig_root, \
  tag=!aj.omegaflowey_arena_box_vanilla.root, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:hostile/omega-flowey/animate/intro/brighten/as_root

$execute as $(arena_box_uuid) run function animated_java:omegaflowey_arena_box_vanilla/remove/this
