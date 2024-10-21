$execute at $(bossfight_tvscreen_uuid) run function omegaflowey.entity:shared/run_as_active_player_or_spectator { command: '\
  playsound omega-flowey:cutscene.summit.victory ambient @s ~ ~ ~ 5 1\
'}

scoreboard players add @s omegaflowey.boss-fight.progress.phase.i 1

function omegaflowey.entity:directorial/boss_fight/shared/phase/soul/loop/event_finished with storage omegaflowey:bossfight
