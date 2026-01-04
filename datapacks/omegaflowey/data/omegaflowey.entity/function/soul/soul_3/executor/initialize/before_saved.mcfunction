execute if score #omegaflowey.soul.3.slow_down omegaflowey.soul.flag matches 0 run \
  function omegaflowey.entity:soul/soul_3/executor/initialize/before_saved/stop_new_rows with storage omegaflowey:soul.3

scoreboard players set #omegaflowey.soul.3.slow_down omegaflowey.soul.flag 1

# slowly decrease bullet speed to 0 (-0.02 blocks/tick)
scoreboard players add #omegaflowey.soul.3.bullet.speed omegaflowey.soul.velocity 2
execute if score #omegaflowey.soul.3.bullet.speed omegaflowey.soul.velocity matches 1.. run \
  scoreboard players set #omegaflowey.soul.3.bullet.speed omegaflowey.soul.velocity 0
