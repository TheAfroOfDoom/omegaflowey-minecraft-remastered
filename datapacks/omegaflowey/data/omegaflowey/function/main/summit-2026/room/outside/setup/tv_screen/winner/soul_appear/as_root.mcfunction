playsound omega-flowey:decorative.soul.show ambient @a[distance=..64] ~ ~ ~ 4

scoreboard players add #omegaflowey.decorative.tvscreen.winner.soul_idx omegaflowey.global.flag 1

execute store result storage omegaflowey:decorative tvscreen.winner.soul_idx int 1 run \
  scoreboard players get #omegaflowey.decorative.tvscreen.winner.soul_idx omegaflowey.global.flag
function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/winner/soul_appear/as_root/macro \
  with storage omegaflowey:decorative tvscreen.winner
