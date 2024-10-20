data modify storage omegaflowey:telemetry.temp data set value { amount: 4 }
function omegaflowey.main:telemetry/bossfight/tag/instant { name: "player.heal" }

effect give @s minecraft:instant_health 1 1 true
stopsound @s player omega-flowey:soul.heal
playsound omega-flowey:soul.heal player @s ~ ~ ~ 5

schedule function omegaflowey.main:summit/room/cave/active_player_health_display/scheduled 2t append
