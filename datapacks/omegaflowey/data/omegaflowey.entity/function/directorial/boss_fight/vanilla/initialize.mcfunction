## Initializes the boss fight
function omegaflowey.entity:directorial/boss_fight/shared/initialize

# Add tags
tag @s add boss_fight.vanilla

# Summon and animate Omega Flowey entity (if it doesn't exist)
execute \
  unless entity @e[type=minecraft:item_display, tag=aj.omegaflowey_nose.root] run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/origin/at { \
    command: "function omegaflowey.entity:hostile/omega-flowey/summon/relative" \
  }
function omegaflowey.entity:hostile/omega-flowey/animate

# Set scores
scoreboard players set @s omegaflowey.boss-fight.attack.delay -1
scoreboard players set @s omegaflowey.boss-fight.attack.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.attack.phase.total 6
scoreboard players set @s omegaflowey.boss-fight.progress.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.progress.phase.total 6

# Begin animating Omega Flowey entity
function omegaflowey.entity:hostile/omega-flowey/animate

# Initialize attack phase
function omegaflowey.entity:directorial/boss_fight/vanilla/phase/attack/initialize
