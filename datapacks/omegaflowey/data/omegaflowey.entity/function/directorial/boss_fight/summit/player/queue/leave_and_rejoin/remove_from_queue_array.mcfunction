function gu:generate
data modify storage omegaflowey:bossfight.remove_from_queue player_id_remove_from_queue set from storage gu:main out

# setup for-loop to iterate through player queue array
scoreboard players set #omegaflowey.bossfight.remove_player_from_queue.i omegaflowey.global.flag 0
data modify storage omegaflowey:bossfight.remove_from_queue i set value 0

function omegaflowey.entity:directorial/boss_fight/summit/player/queue/leave_and_rejoin/remove_from_queue_array/next_element \
  with storage omegaflowey:bossfight.remove_from_queue
