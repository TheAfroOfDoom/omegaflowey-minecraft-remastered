scoreboard players set #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag 0
summon minecraft:text_display 97.0 51.375 -15.0 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "summit.interactable", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
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
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "summit.interactable", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "join-queue-interaction", \
  ], \
  width: 2.5, \
  height: 0.5, \
  response: true, \
  data: { \
    summit_interactable: { \
      on_right_click: "execute on target run function omegaflowey:entity/player/interacted/with_join_queue" \
    } \
  } \
}
execute as @e[ \
  x=97.0, y=51.375, z=-15.0, distance=..0.1, \
  type=minecraft:interaction, \
  tag=join-queue-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative join_queue_interaction_uuid set from storage gu:main out

summon minecraft:text_display 97.4375 56.25 -15.0 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "now-playing-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: [{ "text": "Now playing", "color": "yellow", "bold": true }], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [2.0f, 2.0f, 2.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display 97.4375 55.25 -15.0 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "now-playing-player-name", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [2.0f, 2.0f, 2.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
execute as @e[ \
  x=97.4375, y=55.25, z=-15.0, distance=..0.1, \
  type=minecraft:text_display, \
  tag=now-playing-player-name, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:bossfight active_player_display_uuid set from storage gu:main out

summon minecraft:text_display 97.4375 54.4375 -16.0 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "now-playing-player-health", \
  ], \
  alignment: "center", background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
execute as @e[ \
  x=97.4375, y=54.4375, z=-16.0, distance=..0.1, \
  type=minecraft:text_display, \
  tag=now-playing-player-health, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:bossfight active_player_health_display_uuid set from storage gu:main out

# Player name display updates both the name (+ skull) and the health counter
function omegaflowey:main/summit-2026/room/ruins/active_player_display/update_value with storage omegaflowey:bossfight
