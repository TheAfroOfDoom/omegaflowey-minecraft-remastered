$execute as $(bossfight_tvscreen_uuid) at @s run \
  function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/soul/loop/next_event/2/as_tvscreen

schedule clear omegaflowey:entity/directorial/boss_fight/summit-2026/phase/soul/loop/next_event/2/scheduled
schedule function omegaflowey:entity/directorial/boss_fight/summit-2026/phase/soul/loop/next_event/2/scheduled 30t replace
