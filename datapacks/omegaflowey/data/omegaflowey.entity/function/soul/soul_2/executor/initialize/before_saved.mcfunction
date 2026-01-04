scoreboard players set #omegaflowey.soul.2.slow_down omegaflowey.soul.flag 1

# slowly decrease bullet speed to 0 (-0.02 blocks/tick)
scoreboard players add #omegaflowey.soul.2.bullet.speed omegaflowey.soul.velocity 2
execute if score #omegaflowey.soul.2.bullet.speed omegaflowey.soul.velocity matches 1.. run \
  scoreboard players set #omegaflowey.soul.2.bullet.speed omegaflowey.soul.velocity 0
