scoreboard players add @s attack.clock.i 1

# Ignore logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Terminate
execute if score @s attack.clock.i = @s attack.executor.clock.length run function entity:hostile/omega-flowey/attack/homing-vines-save-states/executor/terminate
