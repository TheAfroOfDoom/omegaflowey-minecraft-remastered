function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

data merge entity @s {CustomName:"\"Finger-Guns Bullet\""}

# Set scores
scoreboard players operation @s omegaflowey.attack.speed.z = #omegaflowey.attack.finger-guns omegaflowey.attack.speed.z

# Play bullet shoot sound
function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/bullet/initialize/as_player' \
}

# Add tags
tag @s add finger-guns
