## Runs tick-wise on the `attack-indicator` for the `friendliness-pellets` attack

scoreboard players add @s attack.clock.i 1

# TODO(45): refactor repeated `attack.clock.i` conditionals into separate functions
# Change ring variant at tick index
execute if score @s attack.clock.i = @s attack.indicator.animation.index run \
  function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/loop/finished_blinking with entity @s data

# Play blinking sound before we summon bullets
execute if score @s attack.clock.i matches ..-1 run playsound omega-flowey:attack.friendliness-pellets.blinking hostile @a ~ ~ ~ 3 1 1

# Ignore bullet summoning logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# TODO(45): refactor repeated `attack.clock.i` conditionals into separate functions
# Delete ring when we start summoning bullets
execute if score @s attack.clock.i matches 0 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/loop/terminate_ring with entity @s data

# Summon a bullet each tick that `omegaflowey.attack.bullets.count` is less than `omegaflowey.attack.bullets.total`
execute if score @s omegaflowey.attack.bullets.count < @s omegaflowey.attack.bullets.total run function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/loop/presummon_bullet

# Add to post-bullet-summoning clock after all bullets have been summoned
execute if score @s omegaflowey.attack.bullets.count = @s omegaflowey.attack.bullets.total run scoreboard players add @s omegaflowey.attack.bullets.clock.i 1

# After `omegaflowey.attack.bullets.clock.delay` ticks, terminate (and activate all bullets)
# TODO(44): this could be off by one tick (might need to be `omegaflowey.attack.bullets.clock.delay - 1`?)
execute if score @s omegaflowey.attack.bullets.clock.i = @s omegaflowey.attack.bullets.clock.delay run \
  function omegaflowey.entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/terminate with entity @s data
