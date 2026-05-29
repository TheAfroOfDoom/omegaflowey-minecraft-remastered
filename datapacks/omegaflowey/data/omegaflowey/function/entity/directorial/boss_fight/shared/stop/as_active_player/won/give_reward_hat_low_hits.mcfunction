give @s carved_pumpkin[ \
  minecraft:item_model="omega-flowey:decorative/reward-hat-magenta", \
  minecraft:damage_resistant={types:"#minecraft:is_fire"}, \
  minecraft:rarity=epic, \
  minecraft:enchantment_glint_override=true, \
  minecraft:item_name=[ { "text": "Survived Omega Flowey in 5 hits or less" } ], \
  minecraft:lore=[[ { "text": "Try wearing me as a hat!", "color": "yellow" } ]], \
  minecraft:max_stack_size=99, \
]

advancement grant @s only summit.sticker_book:omegaflowey/low-hits
