give @s carved_pumpkin[ \
  minecraft:item_model="omega-flowey:decorative/reward-hat-green", \
  minecraft:damage_resistant={types:"#minecraft:is_fire"}, \
  minecraft:rarity=epic, \
  minecraft:enchantment_glint_override=true, \
  minecraft:item_name=[ { "text": "Grabbed 7+ healing items during Omega Flowey" } ], \
  minecraft:lore=[[ { "text": "Try wearing me as a hat!", "color": "yellow" } ]], \
  minecraft:max_stack_size=99, \
  minecraft:custom_data={ summit: { persist: {} } }, \
]

advancement grant @s only summit.sticker_book:omegaflowey/heal-items
