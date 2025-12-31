## Initialize constants
scoreboard players set #omegaflowey.const.-1 omegaflowey.math.const -1
scoreboard players set #omegaflowey.const.2 omegaflowey.math.const 2
scoreboard players set #omegaflowey.const.4 omegaflowey.math.const 4
scoreboard players set #omegaflowey.const.10 omegaflowey.math.const 10
scoreboard players set #omegaflowey.const.20 omegaflowey.math.const 20
scoreboard players set #omegaflowey.const.180 omegaflowey.math.const 180

# Attack IDs
scoreboard players set #omegaflowey.attack.random.id.bomb omegaflowey.attack.flag 1
scoreboard players set #omegaflowey.attack.random.id.dentata-snakes omegaflowey.attack.flag 2
scoreboard players set #omegaflowey.attack.random.id.finger-guns omegaflowey.attack.flag 3
scoreboard players set #omegaflowey.attack.random.id.flamethrower omegaflowey.attack.flag 4
scoreboard players set #omegaflowey.attack.random.id.flies omegaflowey.attack.flag 5
scoreboard players set #omegaflowey.attack.random.id.friendliness-pellets omegaflowey.attack.flag 6
scoreboard players set #omegaflowey.attack.random.id.homing-vines omegaflowey.attack.flag 7
scoreboard players set #omegaflowey.attack.random.id.homing-vines-save-states omegaflowey.attack.flag 8
scoreboard players set #omegaflowey.attack.random.id.x-bullets-lower omegaflowey.attack.flag 9
scoreboard players set #omegaflowey.attack.random.id.x-bullets-upper omegaflowey.attack.flag 10
scoreboard players set #omegaflowey.attack.random.id.x-bullets-upper-save-states omegaflowey.attack.flag 11

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
