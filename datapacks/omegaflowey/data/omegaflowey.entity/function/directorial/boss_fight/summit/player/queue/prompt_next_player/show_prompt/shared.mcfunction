scoreboard players set #omegaflowey.bossfight.has_player_been_prompted omegaflowey.global.flag 0

# clear scheduled functions
schedule clear omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/confirm/after_delay
schedule clear omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/timeout

function omegaflowey.entity:directorial/boss_fight/summit/player/queue/pop
