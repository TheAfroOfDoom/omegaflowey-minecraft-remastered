execute unless score @s omegaflowey.player.summit.has_finished_parkour matches 1 run \
  scoreboard players add #omegaflowey.telemetry.stats.total_distinct_parkour_finishes omegaflowey.global.flag 1
scoreboard players set @s omegaflowey.player.summit.has_finished_parkour 1

function omegaflowey.main:telemetry/booth/add_tag { name: "room.underground.parkour.finish.enter" }
tag @s add omegaflowey.player.room.parkour.finish
