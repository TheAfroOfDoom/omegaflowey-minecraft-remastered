## Runs tick-wise on the `attack-executor` for the `x-bullets-lower` attack

scoreboard players add @s omegaflowey.attack.clock.i 1

# Ignore logic while `omegaflowey.attack.clock.i` is negative
execute if score @s omegaflowey.attack.clock.i matches ..-1 run return 0

# Pause lower_eye animations
execute if score @s omegaflowey.attack.clock.i matches 0 run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-lower/executor/loop/lower_eye/pause_animation with storage omegaflowey:bossfight

# Play slow-motion `look_around` animation via tweening every `tween_duration` ticks
scoreboard players operation @s math.0 = @s omegaflowey.attack.clock.i
scoreboard players operation @s math.0 %= #attack-x-bullets-lower.tween_duration math.const
execute if score @s math.0 matches 0 if score @s attack.indicator.remaining matches 1.. run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-lower/executor/loop/lower_eye/tween_next_frame

# Summon indicators at each lower_eye every `attack.executor.rate` ticks
scoreboard players operation @s math.0 = @s omegaflowey.attack.clock.i
scoreboard players operation @s math.0 %= @s attack.executor.rate
execute if score @s math.0 matches 0 if score @s attack.indicator.remaining matches 1.. run \
  function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-lower/executor/loop/summon_indicator with storage omegaflowey:bossfight

# Terminate
execute if score @s omegaflowey.attack.clock.i >= @s attack.executor.clock.length \
  run function omegaflowey.entity:hostile/omega-flowey/attack/x-bullets-lower/executor/terminate with storage omegaflowey:bossfight
