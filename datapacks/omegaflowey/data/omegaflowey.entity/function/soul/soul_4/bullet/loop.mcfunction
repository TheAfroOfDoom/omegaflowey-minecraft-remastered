$execute unless entity $(executor_uuid) run return run \
  function omegaflowey.entity:soul/soul_4/bullet/terminate

execute if score #omegaflowey.soul.4.word.shake_frame_idx omegaflowey.soul.clock.animation matches 0 run \
  function omegaflowey.entity:soul/soul_4/bullet/play_animation

execute if entity @s[tag=is_east] run teleport @s ~-0.4 ~ ~
execute if entity @s[tag=!is_east] run teleport @s ~0.4 ~ ~

# Terminate bullets once they go far enough in the +/- X direction
execute store result score @s omegaflowey.soul.bullet.position.x run data get entity @s Pos[0] 100

execute if score @s[tag=is_east] omegaflowey.soul.bullet.position.x matches ..-950 run return run \
  function omegaflowey.entity:soul/soul_4/bullet/terminate

execute if score @s[tag=!is_east] omegaflowey.soul.bullet.position.x matches 1050.. run return run \
  function omegaflowey.entity:soul/soul_4/bullet/terminate

# Check if should heal player if this is SAVED phase
execute unless score #omegaflowey.soul.4.saved omegaflowey.soul.flag matches 1 run return 0

# Check if any of this word's locator's hitboxes intersect with a player
scoreboard players set #omegaflowey.soul.4.should_heal omegaflowey.soul.flag 0
function omegaflowey.entity:soul/soul_4/bullet/loop/check_should_heal
execute if score #omegaflowey.soul.4.should_heal omegaflowey.soul.flag matches 1 run return run \
  function omegaflowey.entity:soul/soul_4/bullet/heal with storage omegaflowey:bossfight
