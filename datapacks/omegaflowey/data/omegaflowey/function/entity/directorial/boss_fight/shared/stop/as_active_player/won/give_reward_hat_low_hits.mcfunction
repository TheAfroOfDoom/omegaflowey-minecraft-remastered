give @s carved_pumpkin[ \
  minecraft:item_model="omega-flowey:decorative/reward-hat-magenta", \
  minecraft:damage_resistant={types:"#minecraft:is_fire"}, \
  minecraft:rarity=epic, \
  minecraft:enchantment_glint_override=true, \
  minecraft:item_name=[ { "text": "Survived Omega Flowey in 7 hits or less" } ], \
  minecraft:lore=[[ { "text": "Try wearing me as a hat!", "color": "yellow" } ]], \
  minecraft:max_stack_size=99, \
  minecraft:custom_data={ summit: { persist: {} } }, \
]

advancement grant @s only summit.sticker_book:omegaflowey/low-hits

scoreboard players add #omegaflowey.telemetry.stats.total_wins_low_hits omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_survived_flowey_low_hits matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_wins_low_hits omegaflowey.global.flag 1

scoreboard players set @s omegaflowey.player.summit.has_survived_flowey_low_hits 1
