# reset player queue
data modify storage omegaflowey:bossfight player_queue set value []
scoreboard players set #omegaflowey.bossfight.player_queue_count omegaflowey.global.flag 0
function omegaflowey.main:summit/room/cave/player_queue_counter/update_value
scoreboard players set #omegaflowey.bossfight.has_player_been_prompted omegaflowey.global.flag 0
execute as @a run function omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/shared/as_player
schedule clear omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/confirm/after_delay
schedule clear omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/timeout
