scoreboard players set #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag 0

summon minecraft:text_display 97.0 51.375 -15.0 { \
  Tags: [ \
    "entityview.ignore", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "join-queue-title", \
  ], \
  alignment: "center", \
  billboard: "center", \
  brightness: { block: 14, sky: 0 }, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: [{ "text": "JOIN QUEUE", "color": "light_purple", "bold": true, "underlined": true }], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
summon minecraft:interaction 97.0 51.375 -15.0 { \
  Tags: [ \
    "entityview.ignore", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "join-queue-interaction", \
  ], \
  width: 2.5, \
  height: 0.5, \
  response: true, \
}
execute as @e[ \
  x=-138.0, dx=2, y=42.0, dy=2, z=42.0, dz=2, \
  type=minecraft:interaction, \
  tag=join-queue-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative join_queue_interaction_uuid set from storage gu:main out
