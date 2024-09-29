# Flowey TV screen, smiling
execute as @e[type=minecraft:item_display, tag=omega-flowey-remastered, tag=aj.tv_screen.root, tag=tv_screen.outside] run \
  function animated_java:tv_screen/remove/this
execute positioned -123.47 87.25 33.35 rotated -158.2 12.52 run \
  function animated_java:tv_screen/summon { args: { animation: 'move_slow', start_animation: true, variant: 'smiling' } }
execute as @e[type=minecraft:item_display, tag=omega-flowey-remastered, tag=aj.tv_screen.root, tag=tv-screen-new] run \
  function omega-flowey:summit/room/setup/outside/tv_screen

# Surrounding petal pipes, very simplified models
function animated_java:summit_petal_pipe_right/remove/all
execute positioned -109.9375 90.0625 41.9375 rotated 200 15 run \
  function animated_java:summit_petal_pipe_right/summon { args: { animation: 'move', start_animation: true } }
execute as @e[type=minecraft:item_display, tag=omega-flowey-remastered, tag=aj.summit_petal_pipe_right.root] run \
  function omega-flowey:summit/room/setup/outside/summit_petal_pipe_right

# Title text display
summon minecraft:text_display -109.25 82.75 31.0 { \
  Tags: [ \
    "omega-flowey-remastered", \
    "decorative", \
    "title-display", \
  ], \
  alignment: "center", \
  background: 0, \
  default_background: 1b, \
  line_width: 200, \
  see_through: 0b, \
  shadow: 0b, \
  shadow_strength: 1f, \
  text: '"Omega Flowey Remastered"', \
  text_opacity: 255, \
  transformation: { \
    left_rotation: [ 0.0050161737f, 0.99403214f, -0.052095026f, 0.09571429f], \
    right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], \
    scale: [7.499999f, 7.500005f, 2.500003f], \
    translation: [0.0f, 0.0f, 0.0f] \
  }, \
  view_range: 2.0f, \
}
