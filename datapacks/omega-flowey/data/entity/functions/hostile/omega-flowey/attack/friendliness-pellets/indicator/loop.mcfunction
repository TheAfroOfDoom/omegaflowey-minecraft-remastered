## Runs tick-wise on the `attack-indicator` for the `friendliness-pellets` attack

scoreboard players add @s attack.clock.i 1

# Change ring variant at tick index
execute if score @s attack.clock.i = @s attack.indicator.animation.index run function entity:group/start
execute if score @s attack.clock.i = @s attack.indicator.animation.index as @e[tag=friendliness-pellet-ring,scores={group.id=0}] run function animated_java:friendliness_pellet_ring/apply_variant/finished_blinking
execute if score @s attack.clock.i = @s attack.indicator.animation.index run function entity:group/end

# Play blinking sound before we summon bullets
execute if score @s attack.clock.i matches ..-1 run playsound omega-flowey:attack.friendliness-pellets.blinking hostile @a ~ ~ ~ 3 1 1

# Ignore bullet summoning logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Delete ring when we start summoning bullets
execute if score @s attack.clock.i matches 0 run function entity:group/start
execute if score @s attack.clock.i matches 0 as @e[tag=friendliness-pellet-ring,scores={group.id=0}] run function animated_java:friendliness_pellet_ring/remove/this
execute if score @s attack.clock.i matches 0 run function entity:group/end

# Summon a bullet each tick that `attack.bullets.count` is less than `attack.bullets.total`
execute if score @s attack.bullets.count < @s attack.bullets.total run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/loop/presummon_bullet

# Add to post-bullet-summoning clock after all bullets have been summoned
execute if score @s attack.bullets.count = @s attack.bullets.total run scoreboard players add @s attack.bullets.clock.i 1

# After `attack.bullets.clock.delay` ticks, terminate (and activate all bullets)
# TODO: this could be off by one tick (might need to be `attack.bullets.clock.delay - 1`?)
execute if score @s attack.bullets.clock.i = @s attack.bullets.clock.delay run function entity:hostile/omega-flowey/attack/friendliness-pellets/indicator/terminate
