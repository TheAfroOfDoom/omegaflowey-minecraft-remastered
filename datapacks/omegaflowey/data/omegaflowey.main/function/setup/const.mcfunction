## Initialize constants
scoreboard players set #omegaflowey.const.-1 omegaflowey.math.const -1
scoreboard players set #omegaflowey.const.2 omegaflowey.math.const 2
scoreboard players set #omegaflowey.const.4 omegaflowey.math.const 4
scoreboard players set #omegaflowey.const.10 omegaflowey.math.const 10
scoreboard players set #omegaflowey.const.180 omegaflowey.math.const 180

execute unless score #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag matches 0.. run \
  scoreboard players set #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag -1
