function omegaflowey.main:telemetry/bossfight/tag/instant { name: "cutscene.intro.turn_on_screen" }

$execute as $(bossfight_tvscreen_uuid) at @s run \
  function omegaflowey.entity:directorial/boss_fight/vanilla/phase/cutscene/loop/0/turn_on_screen/as_root
