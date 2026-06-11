scoreboard players set #omegaflowey.decorative.tvscreen.bossfight_exists omegaflowey.global.flag 0
function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/now_playing/scheduled_start/macro_bossfight \
  with storage omegaflowey:bossfight

execute if score #omegaflowey.decorative.tvscreen.bossfight_exists omegaflowey.global.flag matches 0 run return 0

function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/now_playing/scheduled_start/macro \
  with storage omegaflowey:decorative
