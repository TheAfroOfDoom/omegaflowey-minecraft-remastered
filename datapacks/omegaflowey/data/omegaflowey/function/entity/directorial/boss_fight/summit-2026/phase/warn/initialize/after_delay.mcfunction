# Play WARNING sound
$execute at $(bossfight_tvscreen_uuid) run function omegaflowey:entity/shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:boss-fight.alarm ambient @s ~ ~ ~ 10 1' \
}

# Set tv screen to WARNING variant
$execute as $(bossfight_tvscreen_uuid) run function omegaflowey:entity/hostile/omega-flowey/animate/warning/tv_screen

# TODO(323): temp for summit-2026
# execute store result storage omegaflowey:bossfight soul_index int 1 run scoreboard players get @s omegaflowey.boss-fight.progress.phase.i
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run data modify storage omegaflowey:bossfight soul_index set value 3
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 1 run data modify storage omegaflowey:bossfight soul_index set value 4
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 2 run data modify storage omegaflowey:bossfight soul_index set value 5

# Set applicable petal-pipe to soul-color variant
function omegaflowey:entity/hostile/omega-flowey/animate/pipe with storage omegaflowey:bossfight

# Summon and begin animating soul heart model in front of WARNING screen
function omegaflowey:entity/hostile/omega-flowey/summon/warning/soul with storage omegaflowey:bossfight
function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/warn/initialize/after_delay/target_soul_model with storage omegaflowey:bossfight
