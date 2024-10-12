## Set scores
# Length of music (up to the WARNING sound)
scoreboard players set @s omegaflowey.boss-fight.attack.clock.total 463

# Play music
function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: \
  'playsound omega-flowey:music.phase.0 record @s ~ ~ ~ 10 1' \
}

## Add tags
# Use logic to decrease chance of repeating attacks during `attack/random`
tag @s add attack.random.consider_previous_trials
