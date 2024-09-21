## Summon and initialize the boss fight marker

# Kill any pre-existing boss fights
kill @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=directorial, tag=boss_fight]

# Summon and initialize boss fight director
execute at @e[type=minecraft:marker, tag=omega-flowey-remastered, tag=origin.boss_fight] run \
  summon minecraft:marker ~ ~ ~ { \
    CustomName:'"Omega-Flowey Boss-fight Director"', \
    Tags: [ \
      "omega-flowey-remastered", \
      "directorial", \
      "boss_fight", \
      "boss_fight_new", \
      "boss_fight.", \
    ] \
  }
execute as @e[tag=boss_fight_new] at @s run function entity:directorial/boss_fight/summit/initialize
