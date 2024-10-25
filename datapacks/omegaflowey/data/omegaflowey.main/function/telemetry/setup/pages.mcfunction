## telemetry pagination logic
# a page can be max 100 characters once stringified
scoreboard players set #omegaflowey.telemetry.page.max_length omegaflowey.global.flag 250000

# initialize first page if data is empty
execute unless data storage omegaflowey:telemetry data.booth[0] run function omegaflowey.main:telemetry/booth/add_tag/new_page
execute unless data storage omegaflowey:telemetry data.bossfight[0] run function omegaflowey.main:telemetry/bossfight/tag/root/start/new_page
