execute if entity @s[gamemode=survival] run return run \
  data modify storage omegaflowey:telemetry temp.data.g set value 0
execute if entity @s[gamemode=creative] run return run \
  data modify storage omegaflowey:telemetry temp.data.g set value 1
execute if entity @s[gamemode=adventure] run return run \
  data modify storage omegaflowey:telemetry temp.data.g set value 2
execute if entity @s[gamemode=spectator] run return run \
  data modify storage omegaflowey:telemetry temp.data.g set value 3
