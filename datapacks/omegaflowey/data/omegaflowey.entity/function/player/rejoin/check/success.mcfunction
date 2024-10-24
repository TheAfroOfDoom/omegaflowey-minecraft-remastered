execute unless score #omegaflowey.bossfight.skip_reset_telemetry_id omegaflowey.global.flag matches 1 run \
  scoreboard players reset @s omegaflowey.player.telemetry.id

execute if entity @s[tag=omegaflowey.player.fighting_flowey] run function omegaflowey.entity:directorial/boss_fight/summit/player/active/leave_and_rejoin
execute if entity @s[tag=omegaflowey.player.in_queue] run function omegaflowey.entity:directorial/boss_fight/summit/player/queue/leave_and_rejoin
