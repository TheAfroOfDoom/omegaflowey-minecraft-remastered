$execute unless entity $(executor_uuid) run return run \
  function omegaflowey:entity/soul/soul_4/bullet/terminate

function omegaflowey:entity/soul/soul_4/bullet/loop/move

# Terminate bullets once they go far down in the Y direction
execute store result score @s omegaflowey.soul.bullet.position.y run data get entity @s Pos[1] 100

execute if score @s omegaflowey.soul.bullet.position.y matches ..2500 run return run \
  function omegaflowey:entity/soul/soul_4/bullet/terminate

# Check if should heal player if this is SAVED phase
execute unless score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 run return 0

# Check if any of this word's locator's hitboxes intersect with a player
scoreboard players set #omegaflowey.soul.4.should_heal omegaflowey.soul.flag 0
function animated_java:omegaflowey_soul_4_bullet/as_all_locators { \
  command: 'function omegaflowey:entity/soul/soul_4/bullet/loop/as_heal_locator' \
}
execute if score #omegaflowey.soul.4.should_heal omegaflowey.soul.flag matches 1 run return run \
  function omegaflowey:entity/soul/soul_4/bullet/heal with storage omegaflowey:bossfight
