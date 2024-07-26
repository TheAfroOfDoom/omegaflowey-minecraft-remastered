## Runs tick-wise on the `attack-executor` for the `x-bullets-lower` attack

scoreboard players add @s attack.clock.i 1

# Ignore logic while `attack.clock.i` is negative
execute if score @s attack.clock.i matches ..-1 run return 0

# Pause lower_eye animations
execute if score @s attack.clock.i matches 0 as @e[tag=aj.lower_eye.root] run function entity:hostile/omega-flowey/attack/x-bullets-lower/executor/loop/lower_eye/pause_animation

# Play slow-motion `look_around` animation via tweening every `tween_duration` ticks
scoreboard players operation @s math.0 = @s attack.clock.i
scoreboard players operation @s math.0 %= #attack-x-bullets-lower.tween_duration math.const
execute if score @s math.0 matches 0 if score @s attack.indicator.remaining matches 1.. as @e[type=minecraft:item_display,tag=aj.lower_eye.root] run function entity:hostile/omega-flowey/attack/x-bullets-lower/executor/loop/lower_eye/tween_next_frame

# Summon indicators at each lower_eye every `attack.executor.rate` ticks
scoreboard players operation @s math.0 = @s attack.clock.i
scoreboard players operation @s math.0 %= @s attack.executor.rate
execute if score @s math.0 matches 0 if score @s attack.indicator.remaining matches 1.. run function entity:hostile/omega-flowey/attack/x-bullets-lower/executor/loop/summon_indicator

# Terminate
execute if score @s attack.clock.i >= @s attack.executor.clock.length run function entity:hostile/omega-flowey/attack/x-bullets-lower/executor/terminate
