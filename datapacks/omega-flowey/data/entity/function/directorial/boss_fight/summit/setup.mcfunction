function entity:directorial/boss_fight/summit/origin/setup
function entity:directorial/boss_fight/summit/soul_origin/setup

# reset player queue
data modify storage omegaflowey:bossfight player_queue set value []
scoreboard players set #omega-flowey.bossfight.player_queue_count global.flag 0
function omega-flowey:summit/room/cave/player_queue_counter/update_value
scoreboard players set #omegaflowey.bossfight.has_player_been_prompted global.flag 0
execute as @a run function entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/shared/as_player
