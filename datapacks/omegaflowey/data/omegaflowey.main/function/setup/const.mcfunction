## Initialize constants
scoreboard players set #omegaflowey.const.-1 omegaflowey.math.const -1
scoreboard players set #omegaflowey.const.2 omegaflowey.math.const 2
scoreboard players set #omegaflowey.const.4 omegaflowey.math.const 4
scoreboard players set #omegaflowey.const.10 omegaflowey.math.const 10
scoreboard players set #omegaflowey.const.180 omegaflowey.math.const 180

execute unless score #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.bossfight.show_death_message_globally omegaflowey.global.flag 1

execute unless score #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag -1

execute unless score #omegaflowey.telemetry.stats.total_deaths omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_deaths omegaflowey.global.flag 0
execute unless score #omegaflowey.telemetry.stats.total_distinct_deaths omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_distinct_deaths omegaflowey.global.flag 0

execute unless score #omegaflowey.telemetry.stats.total_fights omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_fights omegaflowey.global.flag 0
execute unless score #omegaflowey.telemetry.stats.total_distinct_fights omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_distinct_fights omegaflowey.global.flag 0

execute unless score #omegaflowey.telemetry.stats.total_queue_joins omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_queue_joins omegaflowey.global.flag 0
execute unless score #omegaflowey.telemetry.stats.total_distinct_queue_joins omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_distinct_queue_joins omegaflowey.global.flag 0

execute unless score #omegaflowey.telemetry.stats.total_distinct_parkour_finishes omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_distinct_parkour_finishes omegaflowey.global.flag 0

execute unless score #omegaflowey.telemetry.stats.total_visitors omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_visitors omegaflowey.global.flag 0
execute unless score #omegaflowey.telemetry.stats.total_distinct_visitors omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_distinct_visitors omegaflowey.global.flag 0

execute unless score #omegaflowey.telemetry.stats.total_wins omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_wins omegaflowey.global.flag 0
execute unless score #omegaflowey.telemetry.stats.total_distinct_wins omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.stats.total_distinct_wins omegaflowey.global.flag 0
