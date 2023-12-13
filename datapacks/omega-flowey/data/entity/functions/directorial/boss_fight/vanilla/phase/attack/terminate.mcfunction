# Split on phase score
execute if score @s boss-fight.attack.phase.i matches 0 run function entity:directorial/boss_fight/vanilla/phase/attack/terminate/0

# Increment attack phase
scoreboard players add @s boss-fight.attack.phase.i 1
# Wrap around total phases (6)
scoreboard players operation @s boss-fight.attack.phase.i %= @s boss-fight.attack.phase.total

function entity:directorial/boss_fight/vanilla/phase/warn/initialize

# Remove tags
tag @s remove attack.random.consider_previous_trials
function entity:hostile/omega-flowey/attack/random/remove_previous_tags
tag @s remove boss_fight.phase.attack
