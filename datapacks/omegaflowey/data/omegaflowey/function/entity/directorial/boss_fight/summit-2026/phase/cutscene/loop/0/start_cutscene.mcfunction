function omegaflowey:main/telemetry/bossfight/tag/start { name: "cutscene.intro" }

# Summon and animate Omega Flowey entity
function omegaflowey:entity/directorial/boss_fight/summit-2026/origin/at { \
  command: "execute positioned ~-29.4 ~ ~ run function omegaflowey:entity/hostile/omega-flowey/summon/relative" \
}
# TAG_SUMMIT_2026_HARDCODED_ARENA_VOLUME (and -31 blocks in X direction)
execute as @e[ \
  predicate=summit.booth:omegaflowey/in_bounding_box/arena_stretched_negative_dx, \
  type=minecraft:item_display, \
  tag=aj.global.root, \
  tag=omega-flowey-remastered \
] run function omegaflowey:entity/hostile/omega-flowey/animate/intro/darken/as_root

function omegaflowey:entity/shared/run_as_active_player_or_spectator { command: "\
  execute at @s run playsound omega-flowey:cutscene.intro.music record @s ~ ~ ~ 1 1\
"}

# Set arena box to flashing red variant
$execute as $(arena_box_uuid) run function aj:omegaflowey_arena_box/variants/intro_flashing_red/apply

schedule function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/cutscene/terminate/scheduled 575t
