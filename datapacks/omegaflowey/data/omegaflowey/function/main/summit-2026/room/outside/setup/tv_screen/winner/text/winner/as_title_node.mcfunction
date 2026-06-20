execute if score #omegaflowey.decorative.tvscreen.winner.win_reason omegaflowey.global.flag matches 2 run return run \
  data modify entity @s text set value [{ "text": "WINNER", "bold": true, "color": "light_purple" }]

execute if score #omegaflowey.decorative.tvscreen.winner.win_reason omegaflowey.global.flag matches 1 run return run \
  data modify entity @s text set value [{ "text": "WINNER", "bold": true, "color": "green" }]

data modify entity @s text set value [{ "text": "WINNER", "bold": true, "color": "yellow" }]
