function omegaflowey.main:telemetry/tag/end { name: "attack.friendliness_pellets" }

$execute as $(boss_fight_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/executor/terminate/boss_fight

kill @s
