# don't initialize booth data if there already is an entry in the array
execute \
  if data storage omegaflowey:telemetry data.booth \
  if data storage omegaflowey:telemetry data.booth[0] \
  run return 0

data modify storage omegaflowey:telemetry temp set value {}
execute store result storage omegaflowey:telemetry temp.basetick int 1 run time query gametime

data modify storage omegaflowey:telemetry data.booth_basetick set from storage omegaflowey:telemetry temp.basetick
