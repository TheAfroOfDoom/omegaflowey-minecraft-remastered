summon minecraft:text_display 99.5 21.375 7.6875 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins-lower", \
    "join-queue-2-title", \
  ], \
  alignment: "center", \
  billboard: "center", \
  brightness: { block: 15, sky: 0 }, \
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
summon minecraft:interaction 99.5 21.375 7.6875 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "summit.interactable", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins-lower", \
    "join-queue-2-interaction", \
  ], \
  width: 2.5, \
  height: 0.5, \
  response: true, \
  data: { \
    summit_interactable: { \
      on_right_click: "execute on target run function omegaflowey:entity/player/interacted/with_join_queue_2" \
    } \
  } \
}
execute as @e[ \
  x=99.5, y=21.375, z=7.6875, distance=..0.1, \
  type=minecraft:interaction, \
  tag=join-queue-2-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative join_queue_2_interaction_uuid set from storage gu:main out

summon minecraft:text_display 95.5 22.125 5.01 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins-lower", \
    "now-playing-player-name-2", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  brightness: { block: 15, sky: 0 }, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.1875f, 1.1875f, 1.1875f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
execute as @e[ \
  x=95.5, y=22.125, z=5.01, distance=..0.1, \
  type=minecraft:text_display, \
  tag=now-playing-player-name-2, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:bossfight active_player_display_2_uuid set from storage gu:main out

summon minecraft:text_display 95.5 21.5 5.01 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins-lower", \
    "now-playing-player-health-2", \
  ], \
  alignment: "center", \
  background: 0, \
  brightness: { block: 15, sky: 0 }, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: [{ "text": "HEALTH", "color": "light_purple", "bold": true, "underlined": true }], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
execute as @e[ \
  x=95.5, y=21.5, z=5.01, distance=..0.1, \
  type=minecraft:text_display, \
  tag=now-playing-player-health-2, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:bossfight active_player_health_display_2_uuid set from storage gu:main out

# Player name display updates both the name (+ skull) and the health counter
function omegaflowey:main/summit-2026/room/ruins/active_player_display/update_value with storage omegaflowey:bossfight
