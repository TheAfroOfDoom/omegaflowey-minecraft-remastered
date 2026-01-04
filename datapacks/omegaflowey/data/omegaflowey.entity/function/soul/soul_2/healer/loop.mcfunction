$execute unless entity $(executor_uuid) run return run function omegaflowey.entity:soul/soul_2/healer/terminate

# Check if any of this note's locator's hitboxes intersect with a player
scoreboard players set #omegaflowey.soul.2.note_touched_player omegaflowey.soul.flag 0
function animated_java:omegaflowey_soul_2_note/as_all_locators { \
  command: 'function omegaflowey.entity:soul/soul_2/healer/loop/as_locator' \
}
execute if score #omegaflowey.soul.2.note_touched_player omegaflowey.soul.flag matches 1 run return run \
  function omegaflowey.entity:soul/soul_2/healer/heal with storage omegaflowey:bossfight
