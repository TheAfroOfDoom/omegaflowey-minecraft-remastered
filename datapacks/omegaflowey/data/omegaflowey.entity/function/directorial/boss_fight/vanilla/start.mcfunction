## Summon and initialize the boss fight marker

# Kill any pre-existing boss fights
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at/position { \
  command: "kill @e[ \
    distance=..0.01, \
    type=minecraft:marker, \
    tag=boss_fight, \
    tag=directorial, \
    tag=omega-flowey-remastered, \
    limit=1 \
  ]" \
}

# Summon and initialize boss fight director
function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at { \
  command: "execute summon minecraft:marker at @s run function omegaflowey.entity:directorial/boss_fight/vanilla/initialize" \
}
