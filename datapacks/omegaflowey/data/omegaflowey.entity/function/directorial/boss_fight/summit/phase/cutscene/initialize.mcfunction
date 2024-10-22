data modify storage omegaflowey:telemetry.temp data set value {}
execute store result storage omegaflowey:telemetry.temp data.phase_index int 1 run \
  scoreboard players get @s omegaflowey.boss-fight.cutscene.phase.i
function omegaflowey.main:telemetry/bossfight/tag/start { name: "bossfight.phase.cutscene" }

# Set scores
scoreboard players set @s omegaflowey.boss-fight.cutscene.clock.i -1

# Add tags
tag @s add boss_fight.phase.cutscene

# Split on phase score
execute if score @s omegaflowey.boss-fight.cutscene.phase.i matches 0 run \
  function omegaflowey.entity:directorial/boss_fight/summit/phase/cutscene/initialize/0 with storage omegaflowey:bossfight
