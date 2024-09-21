## Summon and initialize the boss fight marker

# Kill any pre-existing boss fights
kill @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=directorial, tag=boss_fight]

# Assert boss fight origin exists
scoreboard players set #omega-flowey.flag math.const 0
execute if entity @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=origin.boss_fight] run scoreboard players set #omega-flowey.flag math.const 1
execute unless score #omega-flowey.flag math.const matches 1 run \
  function utils:error { error: ' \
    [ \
      { \
        "text": "", \
        "color": "yellow", \
        "extra": \
          [ \
            "Cannot start boss-fight: ", \
            { "text": "origin marker ", "color": "aqua" }, \
            "does not exist" \
          ] \
      } \
    ]' \
  }
execute unless score #omega-flowey.flag math.const matches 1 run return 1

# Summon and initialize boss fight director
execute at @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=origin.boss_fight] run \
  summon minecraft:marker ~ ~ ~ { \
    CustomName:'"Omega-Flowey Boss-fight Director"', \
    Tags: [ \
      "omega-flowey-remastered", \
      "directorial", \
      "boss_fight", \
      "boss_fight_new", \
      "boss_fight.summit", \
    ] \
  }
execute as @e[tag=boss_fight_new] at @s run function entity:directorial/boss_fight/summit/initialize
