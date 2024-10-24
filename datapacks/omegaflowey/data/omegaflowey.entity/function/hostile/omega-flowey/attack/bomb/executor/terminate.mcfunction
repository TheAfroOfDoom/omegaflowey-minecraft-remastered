function omegaflowey.main:telemetry/bossfight/tag/end { name: "attack.bomb" }

$execute as $(boss_fight_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/bomb/executor/terminate/boss_fight

kill @s
