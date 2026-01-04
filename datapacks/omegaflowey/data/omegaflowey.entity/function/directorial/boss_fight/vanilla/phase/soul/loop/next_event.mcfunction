function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/next_event with storage omegaflowey:bossfight

function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/next_event/shared/animate_soul with storage omegaflowey:bossfight

# Split on phase score
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 0 run \
  function omegaflowey.entity:soul/soul_0/start
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 1 run \
  function omegaflowey.entity:soul/soul_1/start
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 2 run \
  function omegaflowey.entity:soul/soul_2/start
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 5 run \
  function omegaflowey.entity:soul/soul_5/start
# TEMP FOR DEV
execute if score @s omegaflowey.boss-fight.progress.phase.i matches 3..4 run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/phase/soul/loop/tempdevskipsouls
