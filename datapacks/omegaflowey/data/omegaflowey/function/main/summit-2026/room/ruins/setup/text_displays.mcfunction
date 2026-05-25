scoreboard players set #omegaflowey.bossfight.queue_disabled omegaflowey.global.flag 0
summon minecraft:text_display 97.0 51.375 -14.5 { \
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
summon minecraft:interaction 97.0 51.375 -14.5 { \
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
  x=97.0, y=51.375, z=-14.5, distance=..0.1, \
  type=minecraft:interaction, \
  tag=join-queue-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative join_queue_interaction_uuid set from storage gu:main out

summon minecraft:text_display 96.99 57.25 -14.5 { \
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

summon minecraft:text_display 96.99 56.25 -14.5 { \
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
  x=96.99, y=56.25, z=-14.5, distance=..0.1, \
  type=minecraft:text_display, \
  tag=now-playing-player-name, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:bossfight active_player_display_uuid set from storage gu:main out

summon minecraft:text_display 96.99 55.4375 -13.5 { \
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
  x=96.99, y=55.4375, z=-13.5, distance=..0.1, \
  type=minecraft:text_display, \
  tag=now-playing-player-health, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:bossfight active_player_health_display_uuid set from storage gu:main out

# Player name display updates both the name (+ skull) and the health counter
function omegaflowey:main/summit-2026/room/ruins/active_player_display/update_value with storage omegaflowey:bossfight

summon minecraft:text_display 83.0 56.125 -9.0 { \
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
  brightness: { block: 15, sky: 0 }, \
  default_background: false, \
  line_width: 200, \
  see_through: false, \
  shadow: 0b, \
  text: [{ "text": "In queue", "color": "aqua", "bold": true }], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [ 2.0f, 2.0f, 2.0f], \
    translation: [ 0.0f, 0.0f, 0.0f] \
  } \
}

summon minecraft:text_display 83.0 54.5 -9.0 { \
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
    left_rotation: [0.0f, 0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [5.0f, 5.0f, 5.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
execute as @e[ \
  x=83.0, y=54.5, z=-9.0, distance=..10, \
  type=minecraft:text_display, \
  tag=players-in-queue-count, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative players_in_queue_count_uuid set from storage gu:main out
function omegaflowey:main/summit-2026/room/ruins/player_queue_counter/update_value with storage omegaflowey:decorative

summon minecraft:text_display 97.99 51.3125 -9.0 { \
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

summon minecraft:text_display 89.25 55.875 -26.99 { \
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

summon minecraft:text_display 89.375 53.875 -26.99 { \
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
    "for you to play during\n", \
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

summon minecraft:text_display 93.625 52.375 -26.99 {\
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
summon minecraft:interaction 94.25 52.3125 -27.25 { \
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
  x=94.25, y=52.3125, z=-27.25, distance=..0.1, \
  type=minecraft:interaction, \
  tag=description-github, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative github_interaction_uuid set from storage gu:main out


summon minecraft:text_display 92.75 51.75 -26.99 {\
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
    scale: [1.375f, 1.375f, 0.0f], \
    translation: [0.0f, 0.0f, 0.0f] \
  } \
}
summon minecraft:interaction 94.25 51.6875 -27.25 { \
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
  x=94.25, y=51.6875, z=-27.25, distance=..0.1, \
  type=minecraft:interaction, \
  tag=description-feedback-form-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative feedback_form_interaction_uuid set from storage gu:main out

summon minecraft:text_display 100.875 54.875 -6.01 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "omega-flower-remastered-animated-java-shoutout", \
  ], \
  alignment: "left", \
  background: 0, \
  default_background: 0b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: [ \
    "This project was\nlargely motivated by\nand possible thanks\nto ", \
    { "text": "Animated Java", "color": "#00ACED", "underlined": true }, \
    "\n\n", \
    "They're here at\n", \
    { "text": "Smithed Summit ", "color": "blue" }, \
    { "translate": ":mountain_snow:" }, \
    "\ntoo! Go check out\ntheir ", \
    { "text": "booth", "color": "#00ACED" }, \
    "!" \
  ], \
  text_opacity: 255, \
  transformation: { \
      left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
      right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
      scale: [0.6875f, 0.6875f, 0.6875f], \
      translation: [0.0f, 0.0f, 0.0f], \
  }, \
}
summon minecraft:interaction 100.875 55.6875 -5.5 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "summit.interactable", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "omega-flower-remastered-animated-java-shoutout-interaction", \
  ], \
  width: 1.25, \
  height: 0.2, \
  response: true, \
  data: { \
    summit_interactable: { \
      on_right_click: "execute on target run function omegaflowey:entity/player/interacted/with_animated_java_link" \
    } \
  } \
}
execute as @e[ \
  x=100.875, y=55.6875, z=-5.5, distance=..0.1, \
  type=minecraft:interaction, \
  tag=omega-flower-remastered-animated-java-shoutout-interaction, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative animated_java_interaction_uuid set from storage gu:main out

summon minecraft:text_display 107.99 54.3125 -14.0 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "flowey-development-history-description", \
  ], \
  alignment: "left", \
  background: 0, \
  brightness: { block: 15, sky: 0 }, \
  default_background: 0b, \
  line_width: 300, \
  see_through: 0b, \
  shadow: 0b, \
  text: [ \
    "I released the original ", \
    { "text": "Omega Flowey ", "color": "gold" }, \
    "map for ", \
    { "text": "Minecraft 1.9 ", "color": "green" }, \
    "in ", \
    { "text": "March 2016", "color": "yellow" }, \
    ". It used over ", \
    { "text": "8000 ", "color": "light_purple" }, \
    { "text": "command blocks ", "color": "aqua" }, \
    "and various ", \
    { "text": "redstone circuits ", "color": "aqua" }, \
    "to simulate the boss-fight with the limited mapmaking tools Minecraft provided. ", \
    "Development time was about ", \
    { "text": "two months ", "color": "yellow" }, \
    "from start to finish.", \
    \
    "\n\n", \
    \
    "I decided to make a remaster after seeing some comments on ", \
    { "text": "YouTube ", "color": "red" }, \
    "playthroughs of the old map mentioning their enjoyment of it and desire for it to be updated to ", \
    "modern Minecraft versions. It was also a great excuse to dive into all the amazing ", \
    { "text": "new Minecraft features ", "color": "green" }, \
    "that were added since the last map I made in ", \
    { "text": "2019 ", "color": "yellow" }, \
    "(a Jevil boss-fight from Deltarune), like ", \
    { "text": "macros", "color": "aqua" }, \
    ", ", \
    { "text": "display entities", "color": "aqua" }, \
    ", and ", \
    { "text": "data storage", "color": "aqua" }, \
    ".", \
    \
    "\n\n", \
    \
    "Development of the remaster has been ongoing since ", \
    { "text": "September 2023 ", "color": "yellow" }, \
    "(nearly ", \
    { "text": "3 years ", "color": "yellow" }, \
    "now 😓) and is taking much longer than the original so I can focus on a higher quality map. ", \
    "Check out our ", \
    { "text": "GitHub", "color": "aqua", "underlined": true }, \
    " to stay up-to-date on progress or if you want to see the map's development history." \
  ], \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
      right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
      scale: [0.5f, 0.5f, 0.5f], \
      translation: [0.0f, 0.0f, 0.0f], \
  }, \
}
summon minecraft:interaction 108.0 54.4375 -14.4375 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.dynamic", \
    "summit.interactable", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "description-github-interaction-back-cave", \
  ], \
  width: 0.4, \
  height: 0.15, \
  response: true, \
  data: { \
    summit_interactable: { \
      on_right_click: "execute on target run function omegaflowey:entity/player/interacted/with_back_cave_github_link" \
    } \
  } \
}
execute as @e[ \
  x=108.0, y=54.4375, z=-14.4375, distance=..0.1, \
  type=minecraft:interaction, \
  tag=description-github-interaction-back-cave, \
  tag=omega-flowey-remastered, \
  limit=1 \
] run function gu:generate
data modify storage omegaflowey:decorative back_cave_github_interaction_uuid set from storage gu:main out

summon minecraft:text_display 88.5 53.1875 -27.0 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "reward-hats-title", \
  ], \
  alignment: "center", \
  background: 0, \
  brightness: { block: 15, sky: 0 }, \
  default_background: false, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: { "text": "REWARD HATS", "underlined": true, "color": "green", "bold": true }, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 1.5f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display 87.125 52.5 -26.9375 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "reward-hats-yellow-description", \
  ], \
  alignment: "center", \
  background: 0, \
  brightness: { block: 15, sky: 0 }, \
  default_background: false, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: { "text": "Survive", "color": "gold" }, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.0f, 1.0f, 1.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display 88.5 52.5 -26.9375 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "reward-hats-magenta-description", \
  ], \
  alignment: "center", \
  background: 0, \
  brightness: { block: 15, sky: 0 }, \
  default_background: false, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: { "text": "Get hit 5 times\nor less", "color": "light_purple" }, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [0.625f, 0.625f, 0.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:text_display 89.875 52.5 -26.9375 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "reward-hats-green-description", \
  ], \
  alignment: "center", \
  background: 0, \
  brightness: { block: 15, sky: 0 }, \
  default_background: false, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  text: { "text": "Grab 7 or more\nhealing items", "color": "green" }, \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [0.625f, 0.625f, 0.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}
