give @s carved_pumpkin[ \
  minecraft:item_model="omega-flowey:decorative/reward-hat-green", \
  minecraft:damage_resistant={types:"#minecraft:is_fire"}, \
  minecraft:rarity=epic, \
  minecraft:enchantment_glint_override=true, \
  minecraft:item_name=[ { "text": "Grabbed 7+ healing items", "color": "green" } ], \
  minecraft:lore=[ \
    [ \
      { "text": "\uf611", "color": "white", "italic": false, "font": "omega-flowey:custom" }, \
      { "text": "OMEGA FLOWEY ", "color": "yellow", "italic": false, "font": "omega-flowey:determinationmono" }, \
      { "text": "REMASTERED", "color": "aqua", "italic": false, "font": "omega-flowey:determinationmono" }, \
    ], { "text": "" }, [ \
      { "text": "Try wearing me as a hat!", "color": "yellow", "font": "minecraft:default" } \
    ] \
  ], \
  minecraft:max_stack_size=99, \
  minecraft:custom_data={ summit: { persist: {} } }, \
]

advancement grant @s only summit.sticker_book:omegaflowey/heal-items

scoreboard players add #omegaflowey.telemetry.stats.total_wins_heal_items omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_survived_flowey_heal_items matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_wins_heal_items omegaflowey.global.flag 1

scoreboard players set @s omegaflowey.player.summit.has_survived_flowey_heal_items 1
