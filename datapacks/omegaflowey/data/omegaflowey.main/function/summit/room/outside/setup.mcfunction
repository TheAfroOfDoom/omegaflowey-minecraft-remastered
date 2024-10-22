# Flowey TV screen, smiling
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 3
execute positioned -123.47 87.25 33.35 rotated -158.2 12.52 run \
  function animated_java:omegaflowey_tv_screen/summon { args: { animation: 'omegaflowey_move_slow', start_animation: true, variant: 'smiling_noglow' } }

# Surrounding petal pipes, very simplified models
execute positioned -109.9375 90.0625 41.9375 rotated 200 15 run \
  function animated_java:omegaflowey_summitpetalpiperight/summon { args: { animation: 'omegaflowey_move', start_animation: true } }
execute positioned -127.5625 74.0625 31.0 rotated 180.2 -5 run \
  function animated_java:omegaflowey_summitpetalpipeleft/summon { args: { animation: 'omegaflowey_move', start_animation: true } }
execute positioned -123.125 101.5625 35.6875 rotated -116 0 run \
  function animated_java:omegaflowey_summitpetalpipetop/summon { args: { animation: 'omegaflowey_move', start_animation: true } }

function omegaflowey.main:summit/room/outside/setup/text_displays

scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 0
