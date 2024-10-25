scoreboard players add #omegaflowey.telemetry.stats.total_visitors omegaflowey.global.flag 1
execute unless score @s omegaflowey.player.summit.has_visited_booth matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_visitors omegaflowey.global.flag 1
scoreboard players set @s omegaflowey.player.summit.has_visited_booth 1

function omegaflowey.main:telemetry/booth/add_tag { name: "root.enter" }
tag @s add omegaflowey.player
