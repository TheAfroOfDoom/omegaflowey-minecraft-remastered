execute store result score #omegaflowey.bossfight.player_queue_count omegaflowey.global.flag run \
  function summit.activity:api/get_queue_len { booth_id: "omegaflowey", activity_id: "bossfight" }

execute if score #omegaflowey.bossfight.player_queue_count omegaflowey.global.flag matches 0 run \
  data modify entity @s text set value [{ "bold": true, "color": "green", "text": "0" }]
execute if score #omegaflowey.bossfight.player_queue_count omegaflowey.global.flag matches 0 run return 0

execute store result storage omegaflowey:bossfight player_queue_count int 1 run \
  scoreboard players get #omegaflowey.bossfight.player_queue_count omegaflowey.global.flag
function omegaflowey:main/summit-2026/room/ruins/player_queue_counter/update_value/non_zero with storage omegaflowey:bossfight
