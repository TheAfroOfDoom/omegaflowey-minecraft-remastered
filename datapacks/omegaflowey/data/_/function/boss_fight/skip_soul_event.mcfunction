execute as @e[tag=soul-executor, tag=soul_0] run function omegaflowey.entity:soul/soul_0/executor/terminate with storage omegaflowey:bossfight
execute as @e[tag=soul-executor, tag=soul_5] run function omegaflowey.entity:soul/soul_5/executor/terminate with storage omegaflowey:bossfight
execute as @e[tag=boss_fight] run \
  function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/event_finished with storage omegaflowey:bossfight
