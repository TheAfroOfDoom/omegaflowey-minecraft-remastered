## Initializes the boss fight
function omegaflowey.entity:directorial/boss_fight/shared/initialize

# Add tags
tag @s add boss_fight.vanilla

# Set scores
scoreboard players set @s omegaflowey.boss-fight.attack.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.attack.phase.total 6
scoreboard players set @s omegaflowey.boss-fight.cutscene.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.progress.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.progress.phase.total 6

scoreboard players set #omegaflowey.bossfight.player_died omegaflowey.global.flag 0

# Initialize first cutscene
function omegaflowey.entity:directorial/boss_fight/vanilla/phase/cutscene/initialize
