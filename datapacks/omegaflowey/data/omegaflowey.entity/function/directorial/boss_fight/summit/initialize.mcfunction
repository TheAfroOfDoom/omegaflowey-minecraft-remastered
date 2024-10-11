## Initializes the boss fight
function omegaflowey.entity:directorial/boss_fight/shared/initialize

# Summon and initialize `arena_box` entity
function animated_java:arena_box/summon/default

# Add tags
tag @s add boss_fight.summit

# Summon Omega Flowey entity
function omegaflowey.entity:directorial/boss_fight/summit/origin/at { \
  command: "function omegaflowey.entity:hostile/omega-flowey/summon/relative" \
}

# Set all attack parameters to default
function omegaflowey.entity:hostile/omega-flowey/attack/reset_scores

# Reset soul event completion status flags
function omegaflowey.entity:directorial/boss_fight/shared/reset_scores

# Set scores
scoreboard players set @s boss-fight.attack.delay -1
scoreboard players set @s boss-fight.attack.phase.i 0
scoreboard players set @s boss-fight.attack.phase.total 2
scoreboard players set @s boss-fight.progress.phase.i 0
scoreboard players set @s boss-fight.progress.phase.total 2

# Begin animating Omega Flowey entity
function omegaflowey.entity:hostile/omega-flowey/animate

# Initialize attack phase
function omegaflowey.entity:directorial/boss_fight/summit/phase/attack/initialize
