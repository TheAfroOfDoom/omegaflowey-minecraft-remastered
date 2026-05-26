# NOTE: TAG_SUMMIT_2026_HARDCODED
# LINK: /directorial/boss_fight/summit-2026/phase/attack/initialize/disable_soul_event_3_barriers.mcfunction
fill 56 -1 -20 79 10 -20 minecraft:barrier replace minecraft:air
fill 56 -1 -10 79 10 -10 minecraft:barrier replace minecraft:air

$execute as $(active_player_uuid) at @s unless entity @s[ \
  x=50, dx=40, y=-5, dy=100, z=-17, dz=4 \
] run teleport @s ~ ~ -14.5
