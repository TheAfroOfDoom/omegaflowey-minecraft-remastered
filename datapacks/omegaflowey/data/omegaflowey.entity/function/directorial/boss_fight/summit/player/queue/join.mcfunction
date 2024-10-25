# if already in queue (or in bossfight somehow), do nothing
execute unless entity @s[tag=!omegaflowey.player.in_queue, tag=!omegaflowey.player.fighting_flowey] run return 0

scoreboard players add #omegaflowey.telemetry.stats.total_queue_joins omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_joined_queue_before matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_queue_joins omegaflowey.global.flag 1
scoreboard players set @s omegaflowey.player.summit.has_joined_queue_before 1

function omegaflowey.main:telemetry/booth/add_tag { name: "player.queue.join" }

# Play select sound if this was called from the interaction (and not manually)
execute if score #omegaflowey.play_join_queue_select_sound omegaflowey.global.flag matches 1 run \
  playsound omega-flowey:soul.touch player @s

tag @s add omegaflowey.player.in_queue

function gu:generate
data modify storage omegaflowey:bossfight add_player_to_queue.player_uuid set from storage gu:main out
data modify storage omegaflowey:bossfight player_queue append from storage omegaflowey:bossfight add_player_to_queue

scoreboard players add #omegaflowey.bossfight.player_queue_count omegaflowey.global.flag 1
function omegaflowey.main:summit/room/cave/player_queue_counter/update_value

# tell the player they joined the queue if either...
# - the queue already has other player(s) in it
# - there is someone already fighting Flowey
scoreboard players set #omegaflowey.bossfight.player_fighting_flowey omegaflowey.global.flag 0
execute if entity @a[tag=omegaflowey.player.fighting_flowey] run \
  scoreboard players set #omegaflowey.bossfight.player_fighting_flowey omegaflowey.global.flag 1

# omegaflowey.math.0 = should log "added to queue"
scoreboard players set @s omegaflowey.math.0 0
execute if score #omegaflowey.bossfight.player_fighting_flowey omegaflowey.global.flag matches 1 run \
  scoreboard players set @s omegaflowey.math.0 1
execute \
  if score #omegaflowey.bossfight.player_fighting_flowey omegaflowey.global.flag matches 0 \
  if score #omegaflowey.bossfight.player_queue_count omegaflowey.global.flag matches 2.. \
  run scoreboard players set @s omegaflowey.math.0 1

execute if score @s omegaflowey.math.0 matches 1 run \
  function omegaflowey.entity:directorial/boss_fight/summit/player/queue/join/log_players_ahead_of_you

# check if the queue is ready to pop
function omegaflowey.entity:directorial/boss_fight/summit/player/queue/check_should_prompt
