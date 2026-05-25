# Flowey TV screen, smiling
# TAG_OUTSIDE_TVSCREEN_HARDCODED
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 3
execute positioned 95.375 98.125 -11.0 rotated -100 30 run \
  function aj:omegaflowey_tv_screen/summon { args: { animation: 'omegaflowey_move_slow', start_animation: true, variant: 'smiling_noglow' } }

# Surrounding petal pipes, very simplified models
# execute positioned -109.9375 90.0625 41.9375 rotated 200 15 run \
#   function aj:omegaflowey_summitpetalpiperight/summon { args: { animation: 'omegaflowey_move', start_animation: true } }
# execute positioned -127.5625 74.0625 31.0 rotated 180.2 -5 run \
#   function aj:omegaflowey_summitpetalpipeleft/summon { args: { animation: 'omegaflowey_move', start_animation: true } }
# execute positioned -123.125 101.5625 35.6875 rotated -116 0 run \
#   function aj:omegaflowey_summitpetalpipetop/summon { args: { animation: 'omegaflowey_move', start_animation: true } }

function omegaflowey:main/summit-2026/room/outside/setup/text_displays

scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 0
