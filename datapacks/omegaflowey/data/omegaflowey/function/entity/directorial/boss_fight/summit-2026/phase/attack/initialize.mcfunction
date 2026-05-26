data modify storage omegaflowey:telemetry temp.data set value {}
execute store result storage omegaflowey:telemetry temp.data.i int 1 run \
  scoreboard players get @s omegaflowey.boss-fight.attack.phase.i
function omegaflowey:main/telemetry/bossfight/tag/start { name: "bossfight.phase.attack" }

# End the bossfight (timeout) if a player has completed 6 attack rounds already to beat it somehow (stalling)
# stop_reason 6 = fight timeout
execute if score #omegaflowey.bossfight.attack_phase_total_count omegaflowey.global.flag matches 6.. run \
  scoreboard players set #omegaflowey.bossfight.stop_reason omegaflowey.global.flag 6
execute if score #omegaflowey.bossfight.attack_phase_total_count omegaflowey.global.flag matches 6.. run return run \
  function omegaflowey:entity/directorial/boss_fight/shared/stop with storage omegaflowey:bossfight

# Split on phase score
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 0 run function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/attack/initialize/0
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 1 run function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/attack/initialize/1
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 2 run function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/attack/initialize/2

# Set scores
scoreboard players set @s omegaflowey.boss-fight.attack.clock.i -1
scoreboard players set @s omegaflowey.boss-fight.attack.delay 10
scoreboard players add #omegaflowey.bossfight.attack_phase_total_count omegaflowey.global.flag 1

# function omegaflowey:entity/directorial/boss_fight/vanilla/phase/attack/initialize/disable_soul_event_3_barriers
# These default to finger-guns, so we're super unlikely to ever start with finger-guns
scoreboard players operation \
  #omegaflowey.attack.random.previous_attack_id omegaflowey.attack.flag = \
  #omegaflowey.attack.random.id.finger-guns omegaflowey.attack.flag
scoreboard players operation \
  #omegaflowey.attack.random.2nd_previous_attack_id omegaflowey.attack.flag = \
  #omegaflowey.attack.random.id.finger-guns omegaflowey.attack.flag

function omegaflowey:entity/directorial/boss_fight/shared/loop/tvscreen_inside_face/start with storage omegaflowey:bossfight

# Add tags
tag @s add boss_fight.phase.attack
