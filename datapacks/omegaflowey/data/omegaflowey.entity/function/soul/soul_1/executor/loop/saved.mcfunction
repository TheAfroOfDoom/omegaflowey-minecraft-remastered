# slowly decrease indicator speed to 0 (-0.006 blocks/tick)
scoreboard players remove #omegaflowey.soul.1.indicator.speed omegaflowey.soul.velocity 6
execute if score #omegaflowey.soul.1.indicator.speed omegaflowey.soul.velocity matches ..-1 run \
  scoreboard players set #omegaflowey.soul.1.indicator.speed omegaflowey.soul.velocity 0

scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.soul.clock.i
scoreboard players operation @s omegaflowey.math.0 -= @s omegaflowey.soul.clock.touched_act_button

# omegaflowey.math.0 = how many ticks after the player grabbed the ACT button
execute if score @s omegaflowey.math.0 matches 153 run return run \
  function omegaflowey.entity:soul/soul_1/executor/initialize/saved with storage omegaflowey:soul.1
execute if score @s omegaflowey.math.0 matches 253.. run return run \
  function omegaflowey.entity:soul/soul_1/executor/terminate with storage omegaflowey:bossfight
