# Play WARNING sound
$execute at $(bossfight_tvscreen_uuid) run function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:boss-fight.alarm ambient @s ~ ~ ~ 10 1' \
}

# Set tv screen to WARNING variant
$execute as $(bossfight_tvscreen_uuid) run function omegaflowey.entity:hostile/omega-flowey/animate/warning/tv_screen

execute store result storage omegaflowey:bossfight soul_index int 1 run scoreboard players get @s omegaflowey.boss-fight.progress.phase.i

# Set applicable petal-pipe to soul-color variant
function omegaflowey.entity:hostile/omega-flowey/animate/pipe with storage omegaflowey:bossfight

# Summon and begin animating soul heart model in front of WARNING screen
function omegaflowey.entity:hostile/omega-flowey/summon/warning/soul with storage omegaflowey:bossfight
function omegaflowey.entity:directorial/boss_fight/summit/phase/warn/initialize/after_delay/target_soul_model with storage omegaflowey:bossfight
