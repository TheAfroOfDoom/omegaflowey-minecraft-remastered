## as `aj.omegaflowey_lower_eye.root`

# store next frame index
scoreboard players operation @s omegaflowey.math.0 = @s aj.omegaflowey_look_around.frame
scoreboard players add @s omegaflowey.math.0 1
# frame wrap order is: 119, 120, 1
execute if score @s omegaflowey.math.0 matches 121.. run scoreboard players set @s omegaflowey.math.0 1
execute store result storage omegaflowey:attack.x-bullets-lower to_frame int 1 run scoreboard players get @s omegaflowey.math.0

# tween to next frame over `tween_duration` seconds
execute store result storage omegaflowey:attack.x-bullets-lower duration int 1 \
  run scoreboard players get #omegaflowey.attack.x-bullets-lower.tween_duration omegaflowey.math.const

function animated_java:omegaflowey_lower_eye/animations/omegaflowey_look_around/tween with storage omegaflowey:attack.x-bullets-lower
