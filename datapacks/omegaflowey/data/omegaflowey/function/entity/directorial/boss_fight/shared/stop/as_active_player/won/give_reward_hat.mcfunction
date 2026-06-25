give @s carved_pumpkin[ \
  minecraft:item_model="omega-flowey:decorative/reward-hat", \
  minecraft:damage_resistant={types:"#minecraft:is_fire"}, \
  minecraft:rarity=rare, \
  minecraft:enchantment_glint_override=false, \
  minecraft:item_name=[ { "text": "Survived Omega Flowey" } ], \
  minecraft:lore=[[ { "text": "Try wearing me as a hat!", "color": "yellow" } ]], \
  minecraft:max_stack_size=99, \
  minecraft:custom_data={ summit: { persist: {} } }, \
]

advancement grant @s only summit.sticker_book:omegaflowey/survive

scoreboard players add #omegaflowey.telemetry.stats.total_wins_survive omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_survived_flowey_basic matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_wins_survive omegaflowey.global.flag 1

scoreboard players set @s omegaflowey.player.summit.has_survived_flowey_basic 1
