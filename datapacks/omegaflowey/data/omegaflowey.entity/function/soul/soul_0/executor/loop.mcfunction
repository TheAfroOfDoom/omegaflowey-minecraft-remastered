# Loop logic for players
execute as @a[tag=omegaflowey.player.fighting_flowey] run function omegaflowey.entity:soul/soul_0/executor/loop/as_player

scoreboard players add @s omegaflowey.soul.clock.i 1

# Ignore logic while `omegaflowey.soul.clock.i` is negative
execute if score @s omegaflowey.soul.clock.i matches ..-1 run return 0

# Summon a bullet grid at a random player once at `omegaflowey.soul.clock.i == 0`
execute if score @s omegaflowey.soul.clock.i matches 0 run function omegaflowey.entity:soul/soul_0/executor/initialize/pre_iterate_grid

# Begin moving bullets after 20 ticks (1s)
execute if score @s omegaflowey.soul.clock.i matches 20 run function omegaflowey.entity:soul/soul_0/executor/loop/start_moving_bullets

# Replay song after it ends (only if we haven't yet started `saved` state)
execute if score #soul_0.saved omegaflowey.soul.flag matches 0 if score @s omegaflowey.soul.clock.i matches 303 run function omegaflowey.entity:soul/soul_0/executor/play_music

# Run new logic if the player grabs the act_button
execute if score #soul_0.touched omegaflowey.soul.flag matches 1 run function omegaflowey.entity:soul/soul_0/executor/loop/saved
execute if score #soul_0.touched omegaflowey.soul.flag matches 1 run return 0

# Terminate
execute if score @s omegaflowey.soul.clock.i >= @s omegaflowey.soul.executor.clock.length run \
  function omegaflowey.entity:soul/soul_0/executor/terminate with storage omegaflowey:bossfight
