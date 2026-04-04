# add current data string length to total page length
execute store result score #omegaflowey.telemetry.math.entry_length omegaflowey.math.0 run data get storage omegaflowey:telemetry temp.bossfight_next_str
scoreboard players operation \
  #omegaflowey.telemetry.bossfight.page.length omegaflowey.global.flag += #omegaflowey.telemetry.math.entry_length omegaflowey.math.0

# add 3 characters for the surrounding quotes + comma separator
scoreboard players add #omegaflowey.telemetry.bossfight.page.length omegaflowey.global.flag 3
