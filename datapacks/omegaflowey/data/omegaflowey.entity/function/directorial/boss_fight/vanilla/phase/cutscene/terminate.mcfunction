function omegaflowey.main:telemetry/bossfight/tag/end { name: "bossfight.phase.cutscene" }

$execute as $(boss_fight_uuid) at @s run function omegaflowey.entity:directorial/boss_fight/vanilla/phase/cutscene/terminate/as_bossfight with storage omegaflowey:bossfight
