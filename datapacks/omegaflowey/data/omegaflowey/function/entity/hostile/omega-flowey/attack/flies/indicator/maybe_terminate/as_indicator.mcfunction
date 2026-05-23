scoreboard players add @s omegaflowey.attack.bullets.terminated 1

# terminate indicator if there are no more associated flies
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.attack.bullets.summoned
scoreboard players operation @s omegaflowey.math.0 -= @s omegaflowey.attack.bullets.terminated
execute if score @s omegaflowey.math.0 matches 0 run scoreboard players set @s omegaflowey.attack.clock.i -1
execute if score @s omegaflowey.math.0 matches 0 run tag @s add flies_are_done

# let boss fight perform next attack if there are 5 flies remaining
execute if score @s omegaflowey.math.0 matches 5 run \
  function omegaflowey:entity/hostile/omega-flowey/attack/flies/indicator/terminate/macro with storage omegaflowey:bossfight
