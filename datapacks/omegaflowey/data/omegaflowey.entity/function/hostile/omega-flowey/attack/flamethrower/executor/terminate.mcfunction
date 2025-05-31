function omegaflowey.main:telemetry/bossfight/tag/end { name: "attack.flamethrower" }

$execute as $(boss_fight_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/flamethrower/executor/terminate/boss_fight

kill @s
