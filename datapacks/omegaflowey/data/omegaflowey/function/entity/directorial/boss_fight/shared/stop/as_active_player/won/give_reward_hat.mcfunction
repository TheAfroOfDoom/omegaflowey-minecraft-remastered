give @s minecraft:yellow_dye[ \
  minecraft:item_model="omega-flowey:decorative/reward-hat", \
  minecraft:damage_resistant={types:"#minecraft:is_fire"}, \
  minecraft:rarity=rare, \
  minecraft:enchantment_glint_override=false, \
  minecraft:equippable={ \
    slot: "head", \
    damage_on_hurt: false, \
    equip_sound: "minecraft:entity.item.pickup", \
  },\
  minecraft:item_name=[ { "text": "Survived" } ], \
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

advancement grant @s only summit.sticker_book:omegaflowey/survive

scoreboard players add #omegaflowey.telemetry.stats.total_wins_survive omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_survived_flowey_basic matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_wins_survive omegaflowey.global.flag 1

scoreboard players set @s omegaflowey.player.summit.has_survived_flowey_basic 1
