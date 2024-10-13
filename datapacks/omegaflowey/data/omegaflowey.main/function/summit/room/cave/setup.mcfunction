function omegaflowey.main:summit/room/cave/setup/text_displays

summon minecraft:item_display -124.0625 42.6875 34.6875 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "reward-hat-example-yellow", \
  ], \
  item: { \
    components: { \
      "minecraft:custom_model_data": 4654465, \
    }, \
    count: 1, \
    id: "minecraft:carved_pumpkin", \
  }, \
  item_display: "fixed", \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.0f, 1.0f, 1.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}

summon minecraft:item_display -124.0625 42.6875 36.3125 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "decorative-cave", \
    "reward-hat-example-cyan", \
  ], \
  item: { \
    components: { \
      "minecraft:custom_model_data": 4654466, \
      "minecraft:enchantment_glint_override": true, \
    }, \
    count: 1, \
    id: "minecraft:carved_pumpkin", \
  }, \
  item_display: "fixed", \
  transformation: { \
    left_rotation: [0.0f, -0.7071068f, 0.0f, 0.7071068f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [1.0f, 1.0f, 1.0f], \
    translation: [0.0f, 0.0f, 0.0f], \
  }, \
}
