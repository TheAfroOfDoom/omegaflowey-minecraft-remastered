# Loop logic for players
$execute as $(active_player_uuid) run function omegaflowey.entity:soul/soul_3/executor/loop/as_player

scoreboard players add @s omegaflowey.soul.clock.i 1

# Ignore logic while `soul.clock.i` is negative
execute if score @s omegaflowey.soul.clock.i matches ..-1 run return 0

# Summon indicator when `soul.clock.i == 0`
execute if score @s omegaflowey.soul.clock.i matches 0 run \
  function omegaflowey.entity:soul/soul_3/indicator/summon

# Run new logic if the player grabs the act_button
execute if score #omegaflowey.soul.3.touched omegaflowey.soul.flag matches 1 run \
  function omegaflowey.entity:soul/soul_3/executor/loop/saved

# Replay song after it ends (only if we haven't yet started `saved` state)
execute \
  if score #omegaflowey.soul.3.saved omegaflowey.soul.flag matches 0 \
  if score @s omegaflowey.soul.clock.i matches 303 run \
  function omegaflowey.entity:soul/soul_3/executor/play_music

# Terminate
execute \
  if score #omegaflowey.soul.3.touched omegaflowey.soul.flag matches 0 \
  if score @s omegaflowey.soul.clock.i matches 365.. run \
  function omegaflowey.entity:soul/soul_3/executor/terminate
