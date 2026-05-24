scoreboard players set #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag 0
summon minecraft:text_display 97.0 51.375 -15.0 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "join-queue-title", \
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
  brightness: { block: 15, sky: 0 }, \
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
  brightness: { block: 15, sky: 0 }, \
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

summon minecraft:text_display 97.4375 57.25 -15.4375 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "players-in-queue-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: false, \
  line_width: 200, \
  see_through: false, \
  shadow: 0b, \
  text: [{ "text": "In queue", "color": "aqua", "bold": true }], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [ 2.0f, 2.0f, 2.0f], \
    translation: [ 0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display 97.4375 57.1875 -13.5625 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "players-in-queue-count", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: false, \
  brightness: { block: 15, sky: 0 }, \
  line_width: 200, \
  see_through: false, \
  shadow: 0b, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [2.5f, 2.5f, 2.5f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
execute as @e[ \
  x=97.4375, y=57.1875, z=-13.5625, distance=..10, \
  type=minecraft:text_display, \
  tag=players-in-queue-count, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative players_in_queue_count_uuid set from storage gu:main out
function omegaflowey:main/summit-2026/room/ruins/player_queue_counter/update_value with storage omegaflowey:decorative

summon minecraft:text_display 97.99 51.3125 -9.5 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "spectate-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: [{ "text": "SPECTATE", "color": "gold", "bold": true }], \
  text_opacity: 255, \
  transformation: { \
      left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
      right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
      scale: [2.0f, 2.0f, 2.0f], \
      translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display 89.5 55.5 -3.01 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "picture-before-after-flowey-build-title-top", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  brightness: { block: 15, sky: 0 }, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: { "text": "Model History", "color": "white", "bold": true }, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.875f, 1.875f, 0.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display 90.9375 54.25 -3.01 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "picture-legacy-flowey-build-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  brightness: { block: 15, sky: 0 }, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: { "text": "2016", "color": "yellow", "bold": true }, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.75f, 1.75f, 1.75f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display 88.0625 54.25 -3.01 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "picture-flowey-build-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  brightness: { block: 15, sky: 0 }, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: { "text": "2024", "color": "aqua", "bold": true }, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.75f, 1.75f, 1.75f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display 89.25 55.625 -26.99 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "description-top", \
  ], \
  alignment: "left", \
  background: 0, \
  default_background: 0b, \
  brightness: { block: 15, sky: 0 }, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: [ \
    "This is a recreation of a boss\nfrom ", \
    { "text": "Toby Fox", "color": "yellow" }, \
    "'s ", \
    { "color": "light_purple", "text": "Undertale" } \
  ], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5000005f, 1.5000002f, 1.4999999f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display 89.375 53.625 -26.99 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "description-bottom", \
  ], \
  alignment: "left", \
  background: 0, \
  default_background: 0b, \
  brightness: { block: 15, sky: 0 }, \
  default_background: 0b, \
  line_width: 160, \
  see_through: 0b, \
  shadow: 0b, \
  text: [ \
    "The map is still ", \
    { "text": "in development", "color": "gold" }, \
    ", but we've created a short ", \
    { "text": "demo ", "color": "aqua" }, \
    "for you to play during the ", \
    { "text": "Smithed Summit ", "color": "blue" }, \
    { "translate": ":mountain_snow:" } \
  ], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5000001f, 1.5000001f, 1.4999995f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display 93.375 52.375 -26.99 {\
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "description-github", \
  ], \
  alignment: "right", \
  background: 0, \
  default_background: 0b, \
  brightness: { block: 15, sky: 0 }, \
  line_width: 100, \
  see_through: 0b, \
  shadow: 0b, \
  text: [ \
    { "text":"GitHub", "color":"gray" }, \
    ": ", \
    { "text": "[link]", "color": "aqua", "underlined": true } \
  ], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.3749996f, 1.375f, 1.3749993f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
summon minecraft:interaction 94.0 52.3125 -27.25 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "summit.interactable", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "description-github", \
  ], \
  width: 1, \
  height: 0.5, \
  response: true, \
  data: { \
    summit_interactable: { \
      on_right_click: "execute on target run function omegaflowey:entity/player/interacted/with_github_description" \
    } \
  } \
}
execute as @e[ \
  x=94.0, y=52.3125, z=-27.25, distance=..0.1, \
  type=minecraft:interaction, \
  tag=description-github, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative github_interaction_uuid set from storage gu:main out


summon minecraft:text_display 92.5 51.75 -26.99 {\
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "description-feedback-form", \
  ], \
  alignment: "right", \
  background: 0, \
  default_background: 0b, \
  brightness: { block: 15, sky: 0 }, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: [ \
    "Share ", \
    { "text":"feedback", "color":"yellow" }, \
    ": ", \
    { "text": "[link]", "color": "aqua", "underlined": true } \
  ], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.3749996f, 1.375f, 1.3749993f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
summon minecraft:interaction 94.0 51.6875 -27.25 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "summit.interactable", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "description-feedback-form-interaction", \
  ], \
  width: 1, \
  height: 0.5, \
  response: true, \
  data: { \
    summit_interactable: { \
      on_right_click: "execute on target run function omegaflowey:entity/player/interacted/with_feedback_form_link" \
    } \
  } \
}
execute as @e[ \
  x=94.0, y=51.6875, z=-27.25, distance=..0.1, \
  type=minecraft:interaction, \
  tag=description-feedback-form-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative feedback_form_interaction_uuid set from storage gu:main out
