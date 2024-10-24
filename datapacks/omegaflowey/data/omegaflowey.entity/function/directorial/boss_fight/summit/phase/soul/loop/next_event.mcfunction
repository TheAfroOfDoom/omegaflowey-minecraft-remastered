function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/next_event with storage omegaflowey:bossfight

# Split on phase score
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run function omegaflowey.entity:directorial/boss_fight/summit/phase/soul/loop/next_event/0
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 1 run \
  function omegaflowey.entity:directorial/boss_fight/summit/phase/soul/loop/next_event/1 with storage omegaflowey:bossfight
