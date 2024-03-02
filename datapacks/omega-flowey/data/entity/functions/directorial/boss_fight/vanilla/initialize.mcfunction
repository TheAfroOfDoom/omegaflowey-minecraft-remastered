## Initializes the boss fight

# Summon Omega Flowey entity if it doesn't exist
execute unless entity @e[tag=aj.tv_screen.root] run function entity:hostile/omega-flowey/summon

# Begin animating Omega Flowey entity
function entity:hostile/omega-flowey/animate

# Set all attack parameters to default
function entity:hostile/omega-flowey/attack/reset_scores

# Set scores
scoreboard players set @s boss-fight.attack.delay -1
scoreboard players set @s boss-fight.attack.phase.i 0
scoreboard players set @s boss-fight.attack.phase.total 6
scoreboard players set @s boss-fight.progress.phase.i 0
scoreboard players set @s boss-fight.progress.phase.total 6

# Flags that represent whether a soul event has been completed or not.
scoreboard players set #boss-fight.soul_0.complete boss-fight.flag 0
scoreboard players set #boss-fight.soul_1.complete boss-fight.flag 0
scoreboard players set #boss-fight.soul_2.complete boss-fight.flag 0
scoreboard players set #boss-fight.soul_3.complete boss-fight.flag 0
scoreboard players set #boss-fight.soul_4.complete boss-fight.flag 0
scoreboard players set #boss-fight.soul_5.complete boss-fight.flag 0

# Remove tag
tag @s remove boss_fight_new

# Initialize attack phase
function entity:directorial/boss_fight/vanilla/phase/attack/initialize
