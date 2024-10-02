# stop iterating if we've iterated through the whole array
execute if score #omega-flowey.bossfight.remove_player_from_queue.i global.flag >= #omega-flowey.bossfight.player_queue_count global.flag \
  run return 0

# get element at current index
$data modify storage omegaflowey:bossfight.remove_from_queue current_element set from storage \
  omegaflowey:bossfight player_queue[$(i)].player_uuid

# compare current element to `player_id_remove_from_queue`
scoreboard players set @s math.0 0
$execute if data storage omegaflowey:bossfight.remove_from_queue { current_element: "$(player_id_remove_from_queue)" } run \
  scoreboard players set @s math.0 1

# if match, remove current element
$execute if score @s math.0 matches 1 run data remove storage omegaflowey:bossfight player_queue[$(i)]
execute if score @s math.0 matches 1 run scoreboard players remove #omega-flowey.bossfight.player_queue_count global.flag 1
execute if score @s math.0 matches 1 run function omega-flowey:summit/room/cave/player_queue_counter/update_value
execute if score @s math.0 matches 1 run return 0

# else, increment and try next element
scoreboard players add #omega-flowey.bossfight.remove_player_from_queue.i global.flag 1
execute store result storage omegaflowey:bossfight.remove_from_queue i int 1 run \
  scoreboard players get #omega-flowey.bossfight.remove_player_from_queue.i global.flag

function entity:directorial/boss_fight/summit/player/queue/leave_and_rejoin/remove_from_queue_array/next_element \
  with storage omegaflowey:bossfight.remove_from_queue
