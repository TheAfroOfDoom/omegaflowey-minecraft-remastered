function omegaflowey.main:telemetry/booth/add_tag { name: "player.queue.confirm.after_delay" }

stopsound @s ambient omega-flowey:cutscene.intro.battle_start

function omegaflowey.entity:directorial/boss_fight/summit/player/queue/prompt_next_player/show_prompt/shared/as_player
function omegaflowey.entity:directorial/boss_fight/summit/origin/at { \
 command: "function omegaflowey.entity:directorial/boss_fight/summit/player/join_bossfight" \
}
