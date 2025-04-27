# We need to reset the player, but if they are joining the fight we don't want to
# reset their Flowey telemetry ID too
scoreboard players set #omegaflowey.bossfight.skip_reset_telemetry_id omegaflowey.global.flag 1
function #summit:join_server
scoreboard players set #omegaflowey.bossfight.skip_reset_telemetry_id omegaflowey.global.flag 0

scoreboard players add #omegaflowey.telemetry.stats.total_fights omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_fought_flowey matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_fights omegaflowey.global.flag 1
scoreboard players set @s omegaflowey.player.summit.has_fought_flowey 1

function omegaflowey.entity:directorial/boss_fight/shared/player/join_bossfight

# Required by summit to disable regen during the fight
tag @s add summit.no_regen

teleport @s ~ ~-4.0 ~-27.0 ~180.0 -30.0
spawnpoint @s -142 43 25 -45

function omegaflowey.main:summit/room/cave/active_player_display/update_value with storage omegaflowey:bossfight

function omegaflowey.entity:directorial/boss_fight/summit/start
