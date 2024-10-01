function entity:directorial/boss_fight/summit/origin/setup
function entity:directorial/boss_fight/summit/soul_origin/setup

# reset player queue
data modify storage omegaflowey:bossfight player_queue set value []
scoreboard players set #omega-flowey.bossfight.player_queue_count global.flag 0
function omega-flowey:summit/room/cave/player_queue_counter/update_value
tag @a remove omegaflowey.player.in_queue
