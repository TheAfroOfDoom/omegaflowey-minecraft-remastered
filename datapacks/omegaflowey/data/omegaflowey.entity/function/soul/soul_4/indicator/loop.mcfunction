$execute unless entity $(executor_uuid) run return run function omegaflowey.entity:soul/soul_4/indicator/terminate

scoreboard players add @s omegaflowey.soul.clock.i 1
execute if score @s omegaflowey.soul.clock.i matches ..-1 run return 0

# summon clump of bullets every N ticks
scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.soul.clock.i
scoreboard players operation @s omegaflowey.math.0 %= @s omegaflowey.soul.indicator.rate
execute if score @s omegaflowey.math.0 matches 0 run \
  function omegaflowey.entity:soul/soul_4/indicator/loop/summon_bullets_setup
