scoreboard players set #omegaflowey.bossfight.has_player_been_prompted global.flag 0
data remove storage omegaflowey:bossfight player_queue_timeout_uuid
schedule clear omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/confirm/after_delay
schedule clear omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/timeout
