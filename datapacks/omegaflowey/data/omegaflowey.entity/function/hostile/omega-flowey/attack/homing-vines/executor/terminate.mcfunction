scoreboard players add @s attack.executor.repeat.count.i 1
execute if score @s attack.executor.repeat.count.i <= @s attack.executor.repeat.count.total run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/executor/terminate/repeat
execute if score @s attack.executor.repeat.count.i <= @s attack.executor.repeat.count.total run return 0

$execute as $(boss_fight_uuid) run function omegaflowey.entity:hostile/omega-flowey/attack/homing-vines/executor/terminate/boss_fight

kill @s
