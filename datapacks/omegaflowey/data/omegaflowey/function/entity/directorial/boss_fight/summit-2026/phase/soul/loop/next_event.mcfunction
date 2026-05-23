function omegaflowey:entity/directorial/boss_fight/shared/phase/soul/loop/next_event with storage omegaflowey:bossfight

# Split on phase score
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run \
  function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/soul/loop/next_event/0
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 1 run \
  function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/soul/loop/next_event/1
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 2 run \
  function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/soul/loop/next_event/2 with storage omegaflowey:bossfight
