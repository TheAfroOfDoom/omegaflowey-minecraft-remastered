summon minecraft:text_display -133.5 45.0 44.99 { \
  Tags: [ \
    "entityview.ignore", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "now-playing-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[{ "text": "Now playing", "color": "yellow", "bold": true }]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [2.0f, 2.0f, 2.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display -133.5 44.0 44.99 { \
  Tags: [ \
    "entityview.ignore", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
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
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [2.0f, 2.0f, 2.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
execute as @e[ \
  x=-134.0, dx=2, y=43.0, dy=2, z=44.0, dz=2, \
  type=minecraft:text_display, \
  tag=now-playing-player-name, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:bossfight active_player_display_uuid set from storage gu:main out

summon minecraft:text_display -134.5 43.1875 44.99 { \
  Tags: [ \
    "entityview.ignore", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "now-playing-player-health", \
  ], \
  alignment: "center", background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
execute as @e[ \
  x=-135.0, dx=2, y=42.0, dy=2, z=44.0, dz=2, \
  type=minecraft:text_display, \
  tag=now-playing-player-health, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:bossfight active_player_health_display_uuid set from storage gu:main out

# Player name display updates both the name (+ skull) and the health counter
function omegaflowey.main:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight

scoreboard players set #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag 0
summon minecraft:text_display -137.5 43.5 42.5 { \
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
  text: '[{ "text": "JOIN QUEUE", "color": "light_purple", "bold": true, "underlined": true }]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
summon minecraft:interaction -137.5 43.5 42.5 { \
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

summon minecraft:text_display -135.0 39.0 46.25 { \
  Tags: [ \
    "entityview.ignore", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "join-queue-2-title", \
  ], \
  alignment: "center", \
  billboard: "center", \
  brightness: { block: 14, sky: 0 }, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[{ "text": "JOIN QUEUE", "color": "light_purple", "bold": true, "underlined": true }]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
summon minecraft:interaction -135.0 39.0 46.25 { \
  Tags: [ \
    "entityview.ignore", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "join-queue-2-interaction", \
  ], \
  width: 2.5, \
  height: 0.5, \
  response: true, \
}
execute as @e[ \
  x=-136.0, dx=2, y=38.0, dy=2, z=45.0, dz=2, \
  type=minecraft:interaction, \
  tag=join-queue-2-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative join_queue_2_interaction_uuid set from storage gu:main out

summon minecraft:text_display -139.99 45.0 39.0 { \
  Tags: [ \
    "entityview.ignore", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "players-in-queue-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: false, \
  line_width: 200, \
  see_through: false, \
  shadow: 0b, \
  text: '[{ "text": "Players in queue", "color": "aqua", "bold": true }]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [ 2.0f, 2.0f, 2.0f], \
    translation: [ 0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display -139.99 43.3125 39.0 { \
  Tags: [ \
    "entityview.ignore", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "players-in-queue-count", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: false, \
  line_width: 200, \
  see_through: false, \
  shadow: 0b, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [5.0f, 5.0f, 5.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
function omegaflowey.main:summit/room/cave/player_queue_counter/update_value

summon minecraft:text_display -127.0 43.0 43.99 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "spectate-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[{ "text": "SPECTATE", "color": "gold", "bold": true }]', \
  text_opacity: 255, \
  transformation: { \
      left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
      right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
      scale: [2.625f, 2.625f, 2.625f], \
      translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display -133.5 43.125 24.01 {\
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "description-github", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 100, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[ \
    "Check us out on ", \
    { "text":"GitHub", "color":"gray" }, \
    ": ", \
    { "text": "[link]", "color": "aqua", "underlined": true } \
  ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.3749996f, 1.375f, 1.3749993f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
summon minecraft:interaction -132.875 43.0625 23.6 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "description-github-interaction", \
  ], \
  width: 1, \
  height: 0.5, \
  response: true, \
}
execute as @e[ \
  x=-134.0, dx=2, y=42.0, dy=2, z=23.0, dz=2, \
  type=minecraft:interaction, \
  tag=description-github-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative github_interaction_uuid set from storage gu:main out

summon minecraft:text_display -127.5 45.95 22.0 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "exit-hallway-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: false, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  shadow_strength: 1f, \
  text: '[ { "text": "EXIT", "color": "yellow", "bold": true } ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.875f, 1.875f, 0.9375f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -124.01 44.0 35.5 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "reward-hats-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: false, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{ "text": "REWARD HATS", "underlined": true, "color": "green", "bold": true }', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -124.01 43.4375 34.6875 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "reward-hats-yellow-description", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: false, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{ "text": "Survive", "color": "gold" }', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.25f, 1.25f, 1.25f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -124.01 43.375 36.3125 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "reward-hats-cyan-description", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: false, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{ "text": "Get hit 7 times\\nor less", "color": "aqua" }', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [0.875f, 0.875f, 0.875f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -120.01 39.625 48.5 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-title-left", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{"text":"HOW TO PLAY","underlined":true,"color":"yellow","bold":true}', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -120.01 38.8125 47.25 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-section-1-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{"text":"1","color":"gray","bold":true}', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -120.01 38.1875 47.25 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-section-1-description", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[ \
    "Dodge ", \
    { "text": "Flowey\'s\\n", "color": "yellow" }, \
    "attacks" \
  ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.0f, 1.0f, 1.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -120.01 38.8125 49.75 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-section-2-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{"text":"2","color":"gray","bold":true}', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -120.01 37.9375 49.75 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-section-2-description", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[ \
    "Touch the\\n", \
    { "text": "ACT BUTTON\\n", "color": "gold" }, \
    "when it appears" \
  ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.0f, 1.0f, 1.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -124.0 39.625 51.99 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-title-right", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{"text":"HOW TO PLAY","underlined":true,"color":"yellow","bold":true}', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -122.75 38.8125 51.99 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-section-3-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{"text":"3","color":"gray","bold":true}', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -122.75 38.1875 51.99 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-section-3-description", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[ \
    "Touch the\\n", \
    { "text": "flowers ", "color": "green" }, \
    "to ", \
    { "text": "heal", "color": "green" } \
  ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.0f, 1.0f, 1.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -125.25 38.8125 51.99 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-section-4-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{"text":"4","color":"gray","bold":true}', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -125.25 38.3125 51.99 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "how-to-play-section-4-description", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[ \
    { "text": "Survive", "color": "dark_red", "bold": true } \
  ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display -142.99 45.1875 32.0 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "history-back-cave-title", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{"text":"HISTORY","bold":true}', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.70710677f, 0.0f, 0.70710677f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.625f, 1.625f, 1.625f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display -133.5 42.125 24.01 {\
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "description-feedback-form", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 0b, \
  line_width: 100, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[ \
    "Share your ", \
    { "text":"feedback", "color":"yellow" }, \
    ": ", \
    { "text": "[link]", "color": "aqua", "underlined": true } \
  ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.3749996f, 1.375f, 1.3749993f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
summon minecraft:interaction -132.6 42.15 23.75 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "description-feedback-form-interaction", \
  ], \
  width: 1, \
  height: 0.5, \
  response: true, \
}
execute as @e[ \
  x=-134.0, dx=2, y=42.0, dy=2, z=23.0, dz=2, \
  type=minecraft:interaction, \
  tag=description-feedback-form-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative feedback_form_interaction_uuid set from storage gu:main out

summon minecraft:text_display -137.75 44.0 26.001 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "sound-categories-display-title", \
  ], \
  alignment: "center", \
  background: 0, \
  brightness: { block: 12, sky: 0 }, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '{ "text": "BOOTH SOUND CATEGORIES", "color": "gold", "bold": true }', \
  text_opacity: 255, \
  transformation: { \
  left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
  right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
  scale: [0.875f, 0.875f, 0.875f], \
  translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display -137.75 42.0 26.005 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "sound-categories-display-content", \
  ], \
  alignment: "left", \
  background: -16777216, \
  brightness: { block: 12, sky: 0 }, \
  default_background: 0b, \
  line_width: 300, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[ \
    { "translate": ":musical_note:" }, \
    { "text": " Jukebox/Note Blocks", "color": "yellow", "bold": true }, \
    "\\nbossfight music\\n\\n", \
    { "translate": ":crossed_swords:" }, \
    { "text": " Hostile Creatures", "color": "yellow", "bold": true }, \
    "\\nattack sound effects\\n\\n", \
    { "translate": ":video_game:" }, \
    { "text": " Players", "color": "yellow", "bold": true }, \
    "\\nsound effects applied to players\\n\\n", \
    { "translate": ":earth_americas:" }, \
    { "text": " Ambient", "color": "yellow", "bold": true }, \
    "\\nmisc. supplemental sounds" \
  ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [0.625f, 0.625f, 0.625f], \
    translation: [0.0f, 0.0f, 0.0f], \
  } \
}

summon minecraft:block_display -139.13 41.9375 26.001 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "sound-categories-display-border", \
  ], \
  block_state: { \
    "Name": "minecraft:smooth_quartz", \
  }, \
  brightness: { block: 12, sky: 0 }, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [2.775f, 1.875f, 1.0E-4f], \
    translation: [0.0f, 0.0f, 0.0f], \
  } \
}

summon minecraft:text_display -127.99 39.25 50.5 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "tip-third-person-mode-title", \
  ], \
  alignment: "center", \
  background: 0, \
  brightness: { block: 12, sky: 0 }, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[ \
    { "text": "TIP", "color": "green", "bold": true, "underlined": true } \
  ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.25f, 1.25f, 1.25f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display -127.99 38.5 50.5 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "tip-third-person-mode-content", \
  ], \
  alignment: "center", \
  background: 0, \
  brightness: { block: 12, sky: 0 }, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: '[ \
    { "text": "We recommend being in\\n", "color": "yellow" }, \
    { "text": "F5 mode ", "color": "aqua", "bold": true }, \
    { "text": "(", "color": "gray" }, \
    { "text": "third-person", "color": "aqua" }, \
    { "text": ")\\n", "color": "gray" }, \
    "for most of the bossfight" \
  ]', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [0.8125f, 0.8125f, 0.8125f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
