scoreboard players add @s attack.clock.i 1

# Visualize blinking lane 1 tick after it is summoned
execute if score @s attack.clock.i matches -5 run function entity:hostile/omega-flowey/attack/homing-vines/indicator/loop/visualize_blinking_lane with entity @s data

# Ignore bullet summoning logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Terminate blinking animation when we start summoning bullets
execute if score @s attack.clock.i matches 0 run function entity:hostile/omega-flowey/attack/homing-vines/indicator/loop/terminate_blinking_lane with entity @s data

# Summon a bullet each tick that `attack.bullets.count` is less than `attack.bullets.total`
execute if score @s attack.bullets.count < @s attack.bullets.total run function entity:hostile/omega-flowey/attack/homing-vines/indicator/loop/presummon_bullet

# Terminate after all bullets have been summoned
execute if score @s attack.bullets.count = @s attack.bullets.total run function entity:hostile/omega-flowey/attack/homing-vines/indicator/terminate
