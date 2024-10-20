scoreboard players add @s omegaflowey.attack.executor.repeat.count.i 1
execute if score @s omegaflowey.attack.executor.repeat.count.i <= @s omegaflowey.attack.executor.repeat.count.total run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/executor/terminate/repeat
execute if score @s omegaflowey.attack.executor.repeat.count.i <= @s omegaflowey.attack.executor.repeat.count.total run return 0

function omegaflowey.main:telemetry/bossfight/tag/end { name: "attack.homing_vines" }

$execute as $(boss_fight_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/executor/terminate/boss_fight

kill @s
