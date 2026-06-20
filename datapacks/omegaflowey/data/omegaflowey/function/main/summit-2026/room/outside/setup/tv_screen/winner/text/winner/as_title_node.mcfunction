execute if score #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag matches ..7 run return run \
  data modify entity @s text set value [{ "text": "WINNER", "bold": true, "color": "light_purple" }]

execute if score #omegaflowey.bossfight.player_heal_count omegaflowey.global.flag matches 7.. run return run \
  data modify entity @s text set value [{ "text": "WINNER", "bold": true, "color": "green" }]

data modify entity @s text set value [{ "text": "WINNER", "bold": true, "color": "yellow" }]
