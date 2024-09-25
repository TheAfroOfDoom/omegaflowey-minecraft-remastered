# Track error state in global flag
scoreboard players set #omega-flowey.origin.error global.flag 0
execute unless entity @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=origin.boss_fight] run \
  scoreboard players set #omega-flowey.origin.error global.flag 1
execute if score #omega-flowey.origin.error global.flag matches 1 run \
  function utils:error { error: ' \
    [ \
      { \
        "text": "", \
        "color": "yellow", \
        "extra": \
          [ \
            "Failed to find ", \
            { "text": "origin ", "color": "aqua" }, \
            "marker" \
          ] \
      } \
    ]' \
  }
