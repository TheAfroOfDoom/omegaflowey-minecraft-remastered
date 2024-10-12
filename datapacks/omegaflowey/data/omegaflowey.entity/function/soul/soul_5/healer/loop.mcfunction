# Check if any of this bandaid's locator's hitboxes intersect with a player
scoreboard players set #soul_5.flower_touched_player omegaflowey.soul.flag 0
function animated_java:soul_5_flower/as_own_locator_entities { command: 'function omegaflowey.entity:soul/soul_5/healer/loop/as_locator with entity @s data' }
execute if score #soul_5.flower_touched_player omegaflowey.soul.flag matches 1 run function omegaflowey.entity:soul/soul_5/healer/heal
execute if score #soul_5.flower_touched_player omegaflowey.soul.flag matches 1 run return 0

# Move forward
teleport @s ^ ^ ^1.0
