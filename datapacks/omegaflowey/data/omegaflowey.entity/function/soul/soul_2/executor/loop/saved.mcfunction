scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.soul.clock.i
scoreboard players operation @s omegaflowey.math.0 -= @s omegaflowey.soul.clock.touched_act_button

# math.0 = how many ticks after the player grabbed the ACT button
execute if score @s omegaflowey.math.0 matches 113..132 run \
  function omegaflowey.entity:soul/soul_2/executor/initialize/before_saved
execute if score @s omegaflowey.math.0 matches 153 run return run \
  function omegaflowey.entity:soul/soul_2/executor/initialize/saved with storage omegaflowey:soul.2
execute if score @s omegaflowey.math.0 matches 253.. run return run \
  function omegaflowey.entity:soul/soul_2/executor/terminate
