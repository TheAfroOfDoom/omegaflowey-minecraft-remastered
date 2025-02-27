function omegaflowey.main:telemetry/bossfight/tag/end { name: "bossfight.phase.attack" }

# Increment attack phase
scoreboard players add @s omegaflowey.boss-fight.attack.phase.i 1
# Wrap around total phases (6)
scoreboard players operation @s omegaflowey.boss-fight.attack.phase.i %= @s omegaflowey.boss-fight.attack.phase.total

# Next phase
function omegaflowey.entity:directorial/boss_fight/summit/phase/warn/initialize

# Remove tags
tag @s remove attack.random.consider_previous_trials
function omegaflowey.entity:hostile/omega-flowey/attack/random/remove_previous_tags
tag @s remove boss_fight.phase.attack
