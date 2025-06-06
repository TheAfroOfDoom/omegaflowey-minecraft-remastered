# Summon and animate Omega Flowey entity
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at { \
  command: "execute positioned ~ ~ ~-29.4 run function omegaflowey.entity:hostile/omega-flowey/summon/relative" \
}
execute as @e[ \
  type=minecraft:item_display, \
  tag=aj.rig_root, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:hostile/omega-flowey/animate/intro/darken/as_root

function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: "\
  execute at @s run playsound omega-flowey:cutscene.intro.music record @s ~ ~ ~ 1 1\
"}

# Set arena box to flashing red variant
$execute as $(arena_box_uuid) run function animated_java:omegaflowey_arena_box_vanilla/variants/intro_flashing_red/apply
