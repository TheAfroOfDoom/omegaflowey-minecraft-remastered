## After 13 ticks, move to `aiming` state

# Ignore logic while `soul.clock.i` is negative
execute if score @s soul.clock.i matches ..-1 run return 0

execute if score @s soul.clock.i matches 13.. run function omegaflowey.entity:soul/soul_5/indicator/loop/idle/next_state
