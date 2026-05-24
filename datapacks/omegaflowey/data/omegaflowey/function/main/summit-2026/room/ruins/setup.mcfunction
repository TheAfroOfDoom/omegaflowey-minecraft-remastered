function omegaflowey:main/summit-2026/room/ruins/setup/text_displays

summon minecraft:item_display 90.9375 53.0 -3.01 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "picture-legacy-flowey-build", \
  ], \
  brightness: { block: 15, sky: 0 }, \
  item: { \
    components: { \
      "minecraft:item_model": "omega-flowey:decorative/legacy-flowey-build-scaled-min", \
    }, \
    count: 1, \
    id: "minecraft:gray_dye", \
  }, \
  item_display: "fixed", \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [2.625f, 1.75f, 0.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:item_display 88.0625 53.0 -3.01 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "picture-flowey-build", \
  ], \
  brightness: { block: 15, sky: 0 }, \
  item: { \
    components: { \
      "minecraft:item_model": "omega-flowey:decorative/flowey-build-scaled-min", \
    }, \
    count: 1, \
    id: "minecraft:gray_dye", \
  }, \
  item_display: "fixed", \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [2.625f, 1.75f, 0.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:item_display 99.0 55.625 -6.01 { \
  Tags: [ \
    "summit.booth_entity.omegaflowey", \
    "summit.static", \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative.ruins", \
    "omega-flowey-remastered-picture-animated-java-logo", \
  ], \
  brightness: { block: 15, sky: 0 }, \
  item: { \
    components: { \
      "minecraft:item_model": "omega-flowey:decorative/animated-java-logo", \
    }, \
    count: 1, \
    id: "minecraft:gray_dye", \
  }, \
  item_display: "fixed", \
  transformation: { \
    left_rotation: [0.0f, 1.0f, 0.0f, 0.0f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.5f, 1.5f, 0.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}
