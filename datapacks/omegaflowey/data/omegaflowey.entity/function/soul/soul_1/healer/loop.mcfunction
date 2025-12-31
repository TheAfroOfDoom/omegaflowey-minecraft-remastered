$execute unless entity $(executor_uuid) run return run function omegaflowey.entity:soul/soul_1/healer/terminate

# Check if any of this thumb's locator's hitboxes intersect with a player
scoreboard players set #omegaflowey.soul.1.thumb_touched_player omegaflowey.soul.flag 0
function animated_java:omegaflowey_soul_1_thumb/as_all_locators { \
  command: 'function omegaflowey.entity:soul/soul_1/healer/loop/as_locator' \
}
execute if score #omegaflowey.soul.1.thumb_touched_player omegaflowey.soul.flag matches 1 run \
  function omegaflowey.entity:soul/soul_1/healer/heal with storage omegaflowey:bossfight
execute if score #omegaflowey.soul.1.thumb_touched_player omegaflowey.soul.flag matches 1 run return 0
