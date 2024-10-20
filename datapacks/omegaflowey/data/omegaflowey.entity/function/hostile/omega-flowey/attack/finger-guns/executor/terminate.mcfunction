function omegaflowey.main:telemetry/tag/end { name: "attack.finger_guns" }

$execute as $(boss_fight_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/finger-guns/executor/terminate/boss_fight

kill @s
