## Initializes the boss fight
function omegaflowey.entity:directorial/boss_fight/shared/initialize

# Summon and initialize `arena_box` entity
function omegaflowey.entity:directorial/boss_fight/summit/origin/at { command: "\
  execute positioned ~ ~ ~-20.5 run function animated_java:omegaflowey_arena_box/summon/default\
"}

# Add tags
tag @s add boss_fight.summit

# Set all attack parameters to default
function omegaflowey.entity:hostile/omega-flowey/attack/reset_scores

# Reset soul event completion status flags
function omegaflowey.entity:directorial/boss_fight/shared/reset_scores

# Set scores
scoreboard players set @s omegaflowey.boss-fight.attack.delay -1
scoreboard players set @s omegaflowey.boss-fight.attack.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.attack.phase.total 2
scoreboard players set @s omegaflowey.boss-fight.cutscene.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.cutscene.phase.total 2
scoreboard players set @s omegaflowey.boss-fight.progress.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.progress.phase.total 2

scoreboard players set #omegaflowey.bossfight.attack_phase_total_count omegaflowey.global.flag 0

# Initialize first cutscene
function omegaflowey.entity:directorial/boss_fight/summit/phase/cutscene/initialize
