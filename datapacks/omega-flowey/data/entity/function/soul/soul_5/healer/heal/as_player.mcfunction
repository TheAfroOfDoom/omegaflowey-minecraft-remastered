effect give @s minecraft:instant_health 1 1 true
stopsound @s player omega-flowey:soul.heal
playsound omega-flowey:soul.heal player @s ~ ~ ~ 5

schedule function omega-flowey:summit/room/cave/active_player_health_display/scheduled 2t append
