## Set scores
# Length of music (up to the WARNING sound)
scoreboard players set @s boss-fight.attack.clock.total 450

# Play music
playsound omega-flowey:music.phase.1 record @a ~ ~ ~ 10 1

## Add tags
# Use logic to decrease chance of repeating attacks during `attack/random`
tag @s add attack.random.consider_previous_trials
