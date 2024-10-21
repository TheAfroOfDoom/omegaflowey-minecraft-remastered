function omegaflowey.main:telemetry/data/shared

execute store result storage omegaflowey:telemetry.temp data.player_hit_count int 1 run \
  scoreboard players get #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag
