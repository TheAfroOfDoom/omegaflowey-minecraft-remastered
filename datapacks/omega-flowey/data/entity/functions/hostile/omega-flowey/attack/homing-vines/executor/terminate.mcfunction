scoreboard players add @s attack.executor.repeat.count.i 1
execute if score @s attack.executor.repeat.count.i <= @s attack.executor.repeat.count.total run function entity:hostile/omega-flowey/attack/homing-vines/executor/terminate/repeat
execute if score @s attack.executor.repeat.count.i <= @s attack.executor.repeat.count.total run return 0

# TODO determine how to control how long we wait until ceding control back to the boss fight director
# after an attack-executor stops looping
kill @s
