scoreboard players add @s attack.executor.repeat.count.i 1
execute if score @s attack.executor.repeat.count.i <= @s attack.executor.repeat.count.total run function entity:hostile/omega-flowey/attack/homing-vines/executor/terminate/repeat
execute if score @s attack.executor.repeat.count.i <= @s attack.executor.repeat.count.total run return 0

execute as @e[tag=boss_fight] run function entity:hostile/omega-flowey/attack/homing-vines/executor/terminate/boss_fight

kill @s
