# if already in queue, do nothing
execute if entity @s[tag=omegaflowey.player.in_queue] run return 0

tag @s add omegaflowey.player.in_queue

function gu:generate
data modify storage omegaflowey:bossfight add_player_to_queue.player_uuid set from storage gu:main out
data modify storage omegaflowey:bossfight player_queue append from storage omegaflowey:bossfight add_player_to_queue

scoreboard players add #omega-flowey.bossfight.player_queue_count global.flag 1
function omega-flowey:summit/room/cave/player_queue_counter/update_value

# check if the queue is ready to pop
function entity:directorial/boss_fight/summit/player/queue/check_should_pop
