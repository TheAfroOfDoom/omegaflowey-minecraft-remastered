# Loop logic for players
$execute as $(active_player_uuid) run function omegaflowey.entity:soul/soul_5/executor/loop/as_player

scoreboard players add @s omegaflowey.soul.clock.i 1

# Ignore logic while `omegaflowey.soul.clock.i` is negative
execute if score @s omegaflowey.soul.clock.i matches ..-1 run return 0

# Summon the gun when `omegaflowey.soul.clock.i == 0`
execute if score @s omegaflowey.soul.clock.i matches 0 run function omegaflowey.entity:soul/soul_5/indicator/summon

# Replay song after it ends (only if we haven't yet started `saved` state)
execute if score #omegaflowey.soul.5.saved omegaflowey.soul.flag matches 0 if score @s omegaflowey.soul.clock.i matches 303 run function omegaflowey.entity:soul/soul_5/executor/play_music

# Run new logic if the player grabs the act_button
execute if score #omegaflowey.soul.5.touched omegaflowey.soul.flag matches 1 run return run function omegaflowey.entity:soul/soul_5/executor/loop/saved

# Terminate
execute if score @s omegaflowey.soul.clock.i >= @s omegaflowey.soul.executor.clock.length run \
  function omegaflowey.entity:soul/soul_5/executor/terminate with storage omegaflowey:bossfight
