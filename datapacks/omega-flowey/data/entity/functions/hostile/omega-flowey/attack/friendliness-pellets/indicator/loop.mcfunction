## Runs tick-wise on the `attack-indicator` for the `friendliness-pellets` attack

scoreboard players add @s attack.clock.i 1

# Ignore bullet summoning logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Summon a bullet each tick that `attack.bullets.count` is less than `attack.bullets.total`
execute if score @s attack.bullets.count < @s attack.bullets.total run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/loop/presummon_bullet

# Add to post-bullet-summoning clock after all bullets have been summoned
execute if score @s attack.bullets.count = @s attack.bullets.total run scoreboard players add @s attack.bullets.clock.i 1

# After `attack.bullets.clock.delay` ticks, terminate (and activate all bullets)
execute if score @s attack.bullets.clock.i = @s attack.bullets.clock.delay run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/terminate
