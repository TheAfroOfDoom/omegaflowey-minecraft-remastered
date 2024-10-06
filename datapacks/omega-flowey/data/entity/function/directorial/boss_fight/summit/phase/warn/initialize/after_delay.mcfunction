# Play WARNING sound
$execute at $(bossfight_tvscreen_uuid) run playsound omega-flowey:boss-fight.alarm ambient @a ~ ~ ~ 10 1

# Set tv screen to WARNING variant
$execute as $(bossfight_tvscreen_uuid) run function entity:hostile/omega-flowey/animate/warning/tv_screen

execute store result storage omegaflowey:bossfight soul_index int 1 run scoreboard players get @s boss-fight.progress.phase.i

# Set applicable petal-pipe to soul-color variant
function entity:hostile/omega-flowey/animate/pipe with storage omegaflowey:bossfight

# Summon and begin animating soul heart model in front of WARNING screen
function entity:hostile/omega-flowey/summon/warning/soul with storage omegaflowey:bossfight
function entity:directorial/boss_fight/summit/phase/warn/initialize/after_delay/target_soul_model with storage omegaflowey:bossfight
