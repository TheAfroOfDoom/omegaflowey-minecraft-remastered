execute unless data storage omegaflowey:telemetry player_id_cache run data modify storage omegaflowey:telemetry player_id_cache set value {}
execute unless data storage omegaflowey:telemetry player_id_cache.temp run data modify storage omegaflowey:telemetry player_id_cache.temp set value {}
execute unless data storage omegaflowey:telemetry tags run data modify storage omegaflowey:telemetry tags set value {}
execute unless data storage omegaflowey:telemetry tags.booth run data modify storage omegaflowey:telemetry tags.booth set value []
execute unless data storage omegaflowey:telemetry tags.bossfight run data modify storage omegaflowey:telemetry tags.bossfight set value []

execute unless score #omegaflowey.telemetry.next_player_id omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.next_player_id omegaflowey.global.flag 0
execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.enabled omegaflowey.global.flag 1
