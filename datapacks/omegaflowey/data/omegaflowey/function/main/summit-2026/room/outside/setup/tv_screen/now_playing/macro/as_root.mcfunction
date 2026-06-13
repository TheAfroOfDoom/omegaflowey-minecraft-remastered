stopsound @a[distance=..64] ambient omega-flowey:decorative.static
function aj:omegaflowey_tv_screen/variants/default/apply

function aj:omegaflowey_tv_screen/as_node { \
  name: 'now_playing_title', \
  command: 'function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/now_playing/macro/as_title_node', \
}
function aj:omegaflowey_tv_screen/as_node { \
  name: 'now_playing_player_head', \
  command: 'function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/now_playing/macro/as_player_head_node with storage omegaflowey:bossfight', \
}
function aj:omegaflowey_tv_screen/as_node { \
  name: 'now_playing_player_name', \
  command: 'function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/now_playing/macro/as_player_name_node with storage omegaflowey:bossfight', \
}

playsound omega-flowey:decorative.soul.show ambient @a[distance=..64] ~ ~ ~ 4

schedule function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/reset_variant 100t replace
tag @s add is_now_playing

schedule function omegaflowey:main/summit-2026/room/outside/setup/tv_screen/now_playing/done 98t replace
