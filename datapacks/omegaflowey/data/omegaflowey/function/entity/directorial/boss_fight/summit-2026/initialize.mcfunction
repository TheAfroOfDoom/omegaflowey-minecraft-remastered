## Initializes the boss fight
function omegaflowey:entity/directorial/boss_fight/shared/initialize

# Summon and initialize `arena_box` entity
# LINK: /omegaflowey:entity/directorial/boss_fight/shared/arena_box/initialize.mcfunction
# NOTE: TAG_SUMMIT_2026_HARDCODED
execute \
  positioned 47.5 3.0 -14.5 rotated -90 0 \
  positioned ~20.5 ~ ~ rotated ~180 0 \
  run function aj:omegaflowey_arena_box/summon { args: { variant: 'default' } }

# Add tags
tag @s add boss_fight.summit

# Set scores
scoreboard players set @s omegaflowey.boss-fight.attack.delay -1
scoreboard players set @s omegaflowey.boss-fight.attack.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.attack.phase.total 2
scoreboard players set @s omegaflowey.boss-fight.cutscene.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.cutscene.phase.total 2
scoreboard players set @s omegaflowey.boss-fight.progress.phase.i 0
scoreboard players set @s omegaflowey.boss-fight.progress.phase.total 2

scoreboard players set #omegaflowey.bossfight.attack_phase_total_count omegaflowey.global.flag 0
scoreboard players set #omegaflowey.bossfight.player_died omegaflowey.global.flag 0

# Initialize first cutscene
function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/cutscene/initialize
