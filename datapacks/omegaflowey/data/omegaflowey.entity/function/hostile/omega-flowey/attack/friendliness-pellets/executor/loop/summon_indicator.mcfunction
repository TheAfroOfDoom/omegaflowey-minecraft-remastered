## summons an indicator at a player

# TODO(43): this is so unbelievably hacky
# first indicator is 6 ticks slower before it starts summoning bullets
execute if score @s omegaflowey.attack.clock.i matches 0 run scoreboard players add #omegaflowey.attack.friendliness-pellets omegaflowey.attack.indicator.clock.delay 6

# Summon indicator
$execute at $(active_player_uuid) run function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at/y { \
  command: "execute positioned ~ ~-4.0 ~ run function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/summon" \
}

# TODO(43): this is so unbelievably hacky
execute if score @s omegaflowey.attack.clock.i matches 0 run scoreboard players remove #omegaflowey.attack.friendliness-pellets omegaflowey.attack.indicator.clock.delay 6
