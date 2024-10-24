# add current data string length to total page length
execute store result score @s omegaflowey.math.0 run data get storage omegaflowey:telemetry temp.booth_next_str
scoreboard players operation \
  #omegaflowey.telemetry.booth.page.length omegaflowey.global.flag += @s omegaflowey.math.0

# add 3 characters for the surrounding quotes + comma separator
scoreboard players add #omegaflowey.telemetry.booth.page.length omegaflowey.global.flag 3

# start new page when current page is long enough
execute \
  if score \
    #omegaflowey.telemetry.booth.page.length omegaflowey.global.flag >= \
    #omegaflowey.telemetry.booth.page.max_length omegaflowey.global.flag \
run function omegaflowey.main:telemetry/booth/add_tag/new_page
