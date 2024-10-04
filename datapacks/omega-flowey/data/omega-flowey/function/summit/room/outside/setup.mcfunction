# Flowey TV screen, smiling
execute as @e[\
  x=-124.0, dx=2, y=87.0, dy=2, z=33.0, dz=2, \
  type=minecraft:item_display, \
  tag=tv_screen.outside, \
  tag=aj.tv_screen.root, \
  tag=omega-flowey-remastered \
] run function animated_java:tv_screen/remove/this
scoreboard players set #omegaflowey.summon.tag_variant global.flag 3
execute positioned -123.47 87.25 33.35 rotated -158.2 12.52 run \
  function animated_java:tv_screen/summon { args: { animation: 'move_slow', start_animation: true, variant: 'smiling' } }

# Surrounding petal pipes, very simplified models
function animated_java:summit_petal_pipe_right/remove/all
execute positioned -109.9375 90.0625 41.9375 rotated 200 15 run \
  function animated_java:summit_petal_pipe_right/summon { args: { animation: 'move', start_animation: true } }

function omega-flowey:summit/room/outside/setup/text_displays

scoreboard players set #omegaflowey.summon.tag_variant global.flag 0
