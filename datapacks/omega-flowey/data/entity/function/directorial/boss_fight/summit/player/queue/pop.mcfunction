data remove storage omegaflowey:bossfight player_queue[0]

$execute as $(player_uuid) run function entity:directorial/boss_fight/summit/player/queue/pop/as_next_player

# Update queue counter
# TODO uncomment this
# scoreboard players remove #omega-flowey.bossfight.player_queue_count global.flag 1
# function omega-flowey:summit/room/cave/player_queue_counter/update_value
