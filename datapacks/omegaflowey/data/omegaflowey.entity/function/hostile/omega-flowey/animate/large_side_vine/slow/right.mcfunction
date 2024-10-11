scoreboard players operation @s aj.omegaflowey_rotate_clockwise_slow.frame = @s aj.omegaflowey_rotate_clockwise.frame

# `_slow` animation is 2x length of normal animation.
# AJ animation frames are +1 indexed.
# so we convert from one to the other with the formula:
# x = original frame, y = slow frame
# y = (2(x - 1) % 60) + 1
scoreboard players remove @s aj.omegaflowey_rotate_clockwise_slow.frame 1
scoreboard players operation @s aj.omegaflowey_rotate_clockwise_slow.frame *= #2 omegaflowey.math.const
scoreboard players operation @s aj.omegaflowey_rotate_clockwise_slow.frame %= #120 omegaflowey.math.const
scoreboard players add @s aj.omegaflowey_rotate_clockwise_slow.frame 1

execute store result storage omegaflowey:bossfight.large_side_vine.tween to_frame int 1 run \
  scoreboard players get @s aj.omegaflowey_rotate_clockwise_slow.frame
data merge storage omegaflowey:bossfight.large_side_vine.tween { duration: 1 }

function animated_java:omegaflowey_large_side_vine/animations/omegaflowey_rotate_clockwise_slow/tween \
  with storage omegaflowey:bossfight.large_side_vine.tween
