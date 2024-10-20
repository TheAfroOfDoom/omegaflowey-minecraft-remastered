data modify storage omegaflowey:telemetry.temp data set value {}
execute store result storage omegaflowey:telemetry.temp data.phase_index int 1 run \
  scoreboard players get @s omegaflowey.boss-fight.attack.phase.i
function omegaflowey.main:telemetry/tag/start { name: "bossfight.phase.attack" }

# Split on phase score
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 0 run function omegaflowey.entity:directorial/boss_fight/summit/phase/attack/initialize/0
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 1 run function omegaflowey.entity:directorial/boss_fight/summit/phase/attack/initialize/1

# Set scores
scoreboard players set @s omegaflowey.boss-fight.attack.clock.i -1
scoreboard players set @s omegaflowey.boss-fight.attack.delay 10

# Add tags
tag @s add boss_fight.phase.attack
