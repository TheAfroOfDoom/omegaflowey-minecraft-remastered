# Blind player for transition to bright model
$effect give $(active_player_uuid) minecraft:blindness 1 0 true

### TAG_SUMMIT_HARDCODED_ARENA_VOLUME (and +31 blocks in Z direction)
execute as @e[ \
  x=-186, dx=61, y=10, dy=46, z=47, dz=91, \
  type=minecraft:item_display, \
  tag=aj.global.root, \
  tag=!aj.omegaflowey_arena_box.root, \
  tag=omega-flowey-remastered \
] run function omegaflowey.entity:hostile/omega-flowey/animate/intro/brighten/as_root

$execute as $(arena_box_uuid) run function animated_java:omegaflowey_arena_box/variants/default/apply

summon minecraft:text_display -156.5 43.0625 76.0 { \
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
    left_rotation: [0.0f, 0.92387956f, -0.38268352f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [10.0f, 10.0f, 10.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
