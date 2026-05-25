effect give @s minecraft:instant_health 1 1 true
stopsound @s player omega-flowey:soul.heal
playsound omega-flowey:soul.heal player @s ~ ~ ~ 5

# TODO(266): active player health display
schedule function omegaflowey:main/summit-2026/room/ruins/active_player_health_display/scheduled 2t append

scoreboard players add #omegaflowey.bossfight.player_heal_count omegaflowey.global.flag 1
