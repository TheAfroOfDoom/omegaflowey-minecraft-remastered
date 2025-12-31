$execute as $(boss_fight_uuid) run \
  function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/event_finished \
    with storage omegaflowey:bossfight

$effect clear $(active_player_uuid) minecraft:resistance
