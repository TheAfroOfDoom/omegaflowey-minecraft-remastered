data remove storage omegaflowey:bossfight player_queue[0]

# Update queue counter
scoreboard players remove #omega-flowey.bossfight.player_queue_count omegaflowey.global.flag 1
function omegaflowey.main:summit/room/cave/player_queue_counter/update_value
