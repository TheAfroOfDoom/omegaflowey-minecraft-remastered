function #summit:join_server

scoreboard players add #omegaflowey.telemetry.stats.total_fights omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_fought_flowey matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_fights omegaflowey.global.flag 1
scoreboard players set @s omegaflowey.player.summit.has_fought_flowey 1

tag @s add omegaflowey.player.fighting_flowey

# Required by summit to disable regen during the fight
tag @s add summit.no_regen

function gu:generate
data modify storage omegaflowey:bossfight active_player_uuid set from storage gu:main out

teleport @s ~ ~-4.0 ~-27.0 ~180.0 -30.0
spawnpoint @s -142 43 25 -45

execute at @s run playsound omega-flowey:cutscene.intro.battle_start_end ambient @s ~ ~ ~ 5

effect clear @s
effect give @s minecraft:blindness 5 0 true
effect give @s instant_health 1 4 true
function omegaflowey.main:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight

scoreboard players set #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag 0
scoreboard players set #omegaflowey.bossfight.player_is_damage_immune omegaflowey.global.flag 0

function omegaflowey.entity:directorial/boss_fight/summit/start
