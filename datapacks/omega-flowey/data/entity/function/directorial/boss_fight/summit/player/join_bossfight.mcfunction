tag @s add omegaflowey.player.fighting_flowey

teleport @s ~ ~-4.0 ~-27.0 ~180.0 -40.0
execute at @s run spawnpoint @s -137 41 38 -90

effect clear @s
effect give @s instant_health 1 4 true
function omega-flowey:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight

function entity:directorial/boss_fight/summit/start
