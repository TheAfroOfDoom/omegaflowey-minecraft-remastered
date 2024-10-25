function omegaflowey.main:telemetry/data/shared

execute store result storage omegaflowey:telemetry temp.data.h int 1 run \
  scoreboard players get #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag
