scoreboard players set #omegaflowey.decorative.tvscreen.winner.win_reason omegaflowey.global.flag 0

execute if score #omegaflowey.bossfight.player_heal_count omegaflowey.global.flag matches 7.. run \
  scoreboard players set #omegaflowey.decorative.tvscreen.winner.win_reason omegaflowey.global.flag 1

execute if score #omegaflowey.bossfight.player_hit_count omegaflowey.global.flag matches ..7 run \
  scoreboard players set #omegaflowey.decorative.tvscreen.winner.win_reason omegaflowey.global.flag 2

function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/winner/queue
