function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/next_event with storage omegaflowey:bossfight

function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/next_event/shared/animate_soul with storage omegaflowey:bossfight

# Split on phase score
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/loop/next_event/0
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 5 run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/loop/next_event/5

# TEMP FOR DEV
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 1..4 run \
  function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/saved/as_bossfight
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 1..4 run \
  function omegaflowey.entity:soul/soul_5/executor/terminate/as_boss_fight
