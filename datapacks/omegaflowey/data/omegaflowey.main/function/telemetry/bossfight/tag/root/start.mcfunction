execute unless score #omegaflowey.telemetry.enabled omegaflowey.global.flag matches 1 run return 0

# if the current page is too long, start a new one
# (only bossfight root.start tags can start a new page, since a set of bossfight tags
# needs to be kept on the same page)
function omegaflowey.main:telemetry/bossfight/tag/root/start/check_if_new_page

# this isn't checked in the schema, but `name:0` represents `root.start`
data modify storage omegaflowey:telemetry temp.bossfight_root_next set value { name: 0 }

execute store result score #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag run time query gametime
execute store result storage omegaflowey:telemetry temp.bossfight_root_next.tick int 1 run \
  scoreboard players get #omegaflowey.telemetry.bossfight.basetime omegaflowey.global.flag

execute summon marker run function omegaflowey.main:telemetry/bossfight/tag/root/start/generate_uuid

function omegaflowey.main:telemetry/bossfight/tag/root/start/macro with storage omegaflowey:bossfight

function omegaflowey.main:telemetry/bossfight/tag/root/start/to_string with storage omegaflowey:telemetry temp.bossfight_root_next
function omegaflowey.main:telemetry/bossfight/tag/update_page_length

# start new bossfight section on latest page
data modify storage omegaflowey:telemetry data.bossfight[-1] append value []

# add data to latest page
data modify storage omegaflowey:telemetry data.bossfight[-1][-1] append from storage omegaflowey:telemetry temp.bossfight_next_str
