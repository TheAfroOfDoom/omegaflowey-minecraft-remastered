# If one shulker box is within the sky range, assume they're all already there
execute \
  if block -113 318 29 minecraft:pink_shulker_box \
  if block -113 319 29 minecraft:barrier \
run return 0

function omegaflowey.utils:log { text_component: [ \
  { "text": "Filled a small section of sky from ", "color": "yellow" }, \
  { "text": "[", "color": "white" }, \
  { "text": "-113,318,29", "color": "aqua" }, \
  { "text": "] ", "color": "white" }, \
  "to ", \
  { "text": "[", "color": "white" }, \
  { "text": "-107,319,35", "color": "aqua" }, \
  { "text": "] ", "color": "white" }, \
  "with ", \
  { "text": "locked ", "color": "red" }, \
  { "text": "pink_shulker_boxes ", "color": "light_purple" }, \
  "above the booth to make the pit darker" \
]}

fill -113 319 29 -107 319 35 minecraft:barrier
fill -113 318 29 -107 318 35 minecraft:pink_shulker_box[facing=up]
