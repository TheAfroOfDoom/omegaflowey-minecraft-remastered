# start new page when current page is long enough
execute \
  if score \
    #omegaflowey.telemetry.bossfight.page.length omegaflowey.global.flag >= \
    #omegaflowey.telemetry.page.max_length omegaflowey.global.flag \
run function omegaflowey.main:telemetry/bossfight/tag/root/start/new_page
