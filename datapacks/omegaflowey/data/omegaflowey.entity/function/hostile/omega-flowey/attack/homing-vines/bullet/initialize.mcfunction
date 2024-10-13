function omegaflowey.entity:hostile/omega-flowey/attack/shared/bullet/initialize

data modify entity @s CustomName set value '"Homing-Vines Bullet"'

# Set scores
scoreboard players operation @s omegaflowey.attack.speed.z = #omegaflowey.attack.homing-vines omegaflowey.attack.speed.z

# Play bullet summon sound
# This also stops any already-playing summon sounds to accurately match what Undertale's homing-vines attack sounds like
function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/bullet/initialize/as_player' \
}

# Add tags
tag @s add homing-vines
