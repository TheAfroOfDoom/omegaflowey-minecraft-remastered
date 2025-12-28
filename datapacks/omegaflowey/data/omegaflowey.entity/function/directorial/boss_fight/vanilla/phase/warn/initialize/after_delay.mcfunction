tag @s remove is_animating_tvscreen_inside_face
function omegaflowey.entity:shared/run_as_active_player_or_spectator { \
  'command': 'stopsound @s ambient omega-flowey:ambient' \
}
schedule clear omegaflowey.entity:directorial/boss_fight/shared/loop/tvscreen_inside_face/scheduled

# Play WARNING sound
$execute at $(bossfight_tvscreen_uuid) run function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:boss-fight.alarm ambient @s ~ ~ ~ 5 1' \
}

# Set tv screen to WARNING variant
$execute as $(bossfight_tvscreen_uuid) run function omegaflowey.entity:hostile/omega-flowey/animate/warning/tv_screen

execute store result storage omegaflowey:bossfight soul_index int 1 run scoreboard players get @s omegaflowey.boss-fight.progress.phase.i

# Set applicable petal-pipe to soul-color variant
function omegaflowey.entity:hostile/omega-flowey/animate/pipe with storage omegaflowey:bossfight

# Summon and begin animating soul heart model in front of WARNING screen
function omegaflowey.entity:hostile/omega-flowey/summon/warning/soul with storage omegaflowey:bossfight

# Summon and begin animating soul tv_screen in other arena
function omegaflowey.entity:hostile/omega-flowey/summon/soul/tv_screen

# Terminate music-looping logic if it was running
execute if entity @s[tag=is_looping_music] run function omegaflowey.entity:directorial/boss_fight/music/terminate with entity @s data.looped_music

# Play end-note at end of phases 2 and 4 (index score will be +1, so 3 and 5)
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 3 run playsound omega-flowey:music.phase.repeat.end-note record @a ~ ~ ~ 10 1
execute if score @s omegaflowey.boss-fight.attack.phase.i matches 5 run playsound omega-flowey:music.phase.repeat.end-note record @a ~ ~ ~ 10 1
