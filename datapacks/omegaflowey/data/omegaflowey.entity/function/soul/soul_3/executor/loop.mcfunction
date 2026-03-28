# Loop logic for players
$execute as $(active_player_uuid) run function omegaflowey.entity:soul/soul_3/executor/loop/as_player

scoreboard players add @s omegaflowey.soul.clock.i 1

# Ignore logic while `soul.clock.i` is negative
execute if score @s omegaflowey.soul.clock.i matches ..-1 run return 0

# Summon bullets (words) per row
function omegaflowey.entity:soul/soul_3/executor/loop/rows

# Run new logic if the player grabs the act_button
execute if score #omegaflowey.soul.3.touched omegaflowey.soul.flag matches 1 run \
  function omegaflowey.entity:soul/soul_3/executor/loop/saved

# Terminate
execute \
  if score #omegaflowey.soul.3.touched omegaflowey.soul.flag matches 0 \
  if score @s omegaflowey.soul.clock.i matches 365.. run \
  function omegaflowey.entity:soul/soul_3/executor/terminate
