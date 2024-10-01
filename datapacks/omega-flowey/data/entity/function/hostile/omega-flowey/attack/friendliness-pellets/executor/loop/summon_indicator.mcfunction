## summons an indicator at a player

# Summon indicator
execute at @r[tag=omegaflowey.player.fighting_flowey] run function entity:directorial/boss_fight/summit/origin/at/y { \
  command: "execute positioned ~ ~-4.0 ~ run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/summon" \
}

# TODO(43): this is so unbelievably hacky
# first indicator is 6 ticks slower before it starts summoning bullets
execute if score @s attack.clock.i matches 0 run scoreboard players add #attack-friendliness-pellets attack.indicator.clock.delay 6

# Initialize indicator
execute as @e[tag=attack-indicator-new] at @s run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/initialize

# TODO(43): this is so unbelievably hacky
execute if score @s attack.clock.i matches 0 run scoreboard players remove #attack-friendliness-pellets attack.indicator.clock.delay 6
