data modify storage omegaflowey:telemetry temp.data set value {}
execute store result storage omegaflowey:telemetry temp.data.i int 1 run \
  scoreboard players get @s omegaflowey.boss-fight.progress.phase.i
function omegaflowey.main:telemetry/bossfight/tag/start { name: "bossfight.phase.warn" }

## Set scores
# Length of the WARNING sound
scoreboard players set @s omegaflowey.boss-fight.warn.clock.total 101
# Delay before WARNING sound starts playing/animating
# (2s of grace period where we stop starting attacks, but dont display WARNING yet)
scoreboard players set @s omegaflowey.boss-fight.warn.clock.i -41

# Add tags
tag @s add boss_fight.phase.warn
