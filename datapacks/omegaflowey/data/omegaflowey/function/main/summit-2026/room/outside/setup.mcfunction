# Flowey TV screen, smiling
# TAG_OUTSIDE_TVSCREEN_HARDCODED
scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 3
execute positioned 95.375 98.125 -11.0 rotated -100 30 run \
  function aj:omegaflowey_tv_screen/summon { args: { animation: 'omegaflowey_move_slow', start_animation: true, variant: 'smiling_noglow' } }

# Surrounding petal pipes, very simplified models
execute positioned 87.125 96.0625 -4.125 rotated 340 5 run \
  function aj:omegaflowey_summitpetalpiperight/summon { args: { animation: 'omegaflowey_move', start_animation: true } }
execute positioned 90.75 93.75 -31.1875 rotated 75 -10 run \
  function aj:omegaflowey_summitpetalpipeleft/summon { args: { animation: 'omegaflowey_move', start_animation: true } }
execute positioned 98.0625 111.5625 -9.875 rotated 0 0 run \
  function aj:omegaflowey_summitpetalpipetop/summon { args: { animation: 'omegaflowey_move', start_animation: true } }

function omegaflowey:main/summit-2026/room/outside/setup/text_displays

scoreboard players set #omegaflowey.summon.tag_variant omegaflowey.global.flag 0
