# Update queue counter
scoreboard players remove #omega-flowey.bossfight.player_queue_count global.flag 1
function omega-flowey:summit/room/cave/player_queue_counter/update_value

data remove storage omegaflowey:bossfight player_queue[0]

# if the player is not online, skip them and pop the next one
$execute unless entity $(player_uuid) run function entity:directorial/boss_fight/summit/player/queue/check_should_pop

$execute as $(player_uuid) run function entity:directorial/boss_fight/summit/player/queue/pop/as_next_player
