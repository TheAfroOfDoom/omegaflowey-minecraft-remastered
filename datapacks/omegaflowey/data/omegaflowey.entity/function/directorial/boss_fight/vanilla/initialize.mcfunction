## Initializes the boss fight
function omegaflowey.entity:directorial/boss_fight/shared/initialize

# Summon Omega Flowey entity if it doesn't exist
execute unless entity @e[tag=aj.tv_screen.root] run function omegaflowey.entity:hostile/omega-flowey/summon { args: {} }

# Set all attack parameters to default
function omegaflowey.entity:hostile/omega-flowey/attack/reset_scores

# Reset soul event completion status flags
function omegaflowey.entity:directorial/boss_fight/shared/reset_scores

# Set scores
scoreboard players set @s boss-fight.attack.delay -1
scoreboard players set @s boss-fight.attack.phase.i 0
scoreboard players set @s boss-fight.attack.phase.total 6
scoreboard players set @s boss-fight.progress.phase.i 0
scoreboard players set @s boss-fight.progress.phase.total 6

# Begin animating Omega Flowey entity
function omegaflowey.entity:hostile/omega-flowey/animate

# Remove tag
tag @s remove boss_fight_new

# Initialize attack phase
function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize
