# Summon and animate Omega Flowey entity
function entity:directorial/boss_fight/summit/origin/at { \
  command: "execute positioned ~ ~ ~29.4 run function entity:hostile/omega-flowey/summon/relative" \
}
execute as @e[ \
  x=-186, dx=61, y=12, dy=44, z=47, dz=91, \
  type=minecraft:item_display, \
  tag=aj.rig_root, \
  tag=omega-flowey-remastered \
] run function entity:hostile/omega-flowey/animate/intro/darken/as_root

playsound omega-flowey:cutscene.intro.music record @a ~ ~ ~ 5 1

# Set arena box to flashing red variant
$execute as $(arena_box_uuid) run function animated_java:arena_box/variants/intro_flashing_red/apply

# schedule function entity:directorial/boss_fight/summit/phase/cutscene/terminate/scheduled 555t
