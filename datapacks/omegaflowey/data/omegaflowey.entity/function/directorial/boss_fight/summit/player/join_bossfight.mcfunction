tag @s add omegaflowey.player.fighting_flowey

function gu:generate
data modify storage omegaflowey:bossfight active_player_uuid set from storage gu:main out

teleport @s ~ ~-4.0 ~-27.0 ~180.0 -40.0
execute at @s run spawnpoint @s -142 43 25 -45

effect clear @s
effect give @s instant_health 1 4 true
function omegaflowey.main:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight

scoreboard players set #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag 0
scoreboard players set #omegaflowey.bossfight.player_is_damage_immune omegaflowey.global.flag 0

function omegaflowey.entity:directorial/boss_fight/summit/start
