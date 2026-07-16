# Blind player for transition to bright model
$effect give $(active_player_uuid) minecraft:blindness 1 0 true

### TAG_SUMMIT_2026_HARDCODED_ARENA_VOLUME (and -31 blocks in X direction)
execute as @e[ \
  predicate=summit.booth:omegaflowey/in_bounding_box/arena_stretched_negative_dx, \
  type=minecraft:item_display, \
  tag=aj.global.root, \
  tag=!aj.omegaflowey_arena_box.root, \
  tag=omega-flowey-remastered \
] run function omegaflowey:entity/hostile/omega-flowey/animate/intro/brighten/as_root

$execute as $(arena_box_uuid) run function aj:omegaflowey_arena_box/variants/default/apply

# NOTE: TAG_SUMMIT_2026_HARDCODED
summon minecraft:text_display 67.5 26.0625 -14.5 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "directorial", \
    "boss_fight.decorative", \
    "demo-intro-title", \
  ], \
  alignment: "center", \
  background: 0, \
  brightness: { block: 15, sky: 0 }, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: { "text": "DEMO", "color": "yellow", "bold": true }, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.2705981f, 0.6532815f, -0.2705981f, 0.6532815f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [10.0f, 10.0f, 10.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
