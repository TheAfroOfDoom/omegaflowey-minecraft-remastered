scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.soul.clock.i
scoreboard players operation @s omegaflowey.math.0 -= @s omegaflowey.soul.clock.touched_act_button

# omegaflowey.math.0 = how many ticks after the player grabbed the ACT button
execute if score @s omegaflowey.math.0 matches 120 run function omegaflowey.entity:soul/soul_0/executor/initialize/before_saved
execute if score @s omegaflowey.math.0 matches 153 run function omegaflowey.entity:soul/soul_0/executor/initialize/saved
execute if score @s omegaflowey.math.0 matches 253.. run \
  function omegaflowey.entity:soul/soul_0/executor/terminate with storage omegaflowey:bossfight
