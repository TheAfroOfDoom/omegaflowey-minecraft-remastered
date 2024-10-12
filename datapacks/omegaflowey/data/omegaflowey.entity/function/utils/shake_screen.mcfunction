# TODO(38): parameterize this function's yaw/pitch ranges
# TODO(42): evaluate if these ranges (0.5..5 deg yaw, 0.5..2 deg pitch) are too little/too much screen shake
# Shake player yaw anywhere from 0.5..5.0 degrees (can also be negative)
execute store result score @s omegaflowey.math.0 run random value 5..50
execute store result score @s omegaflowey.math.1 run random value 0..1
execute if score @s omegaflowey.math.1 matches 1 run scoreboard players operation @s omegaflowey.math.0 *= #omegaflowey.const.-1 omegaflowey.math.const
execute store result storage omegaflowey:utils.shake_screen yaw float 0.1 run scoreboard players get @s omegaflowey.math.0

# Shake player pitch anywhere from 0.5..2.0 degrees (can also be negative)
execute store result score @s omegaflowey.math.2 run random value 5..20
execute store result score @s omegaflowey.math.1 run random value 0..1
execute if score @s omegaflowey.math.1 matches 1 run scoreboard players operation @s omegaflowey.math.2 *= #omegaflowey.const.-1 omegaflowey.math.const
execute store result storage omegaflowey:utils.shake_screen pitch float 0.1 run scoreboard players get @s omegaflowey.math.2

function omegaflowey.entity:utils/shake_screen_macro with storage omegaflowey:utils.shake_screen

scoreboard players operation @s omegaflowey.player.shake.yaw += @s omegaflowey.math.0
scoreboard players operation @s omegaflowey.player.shake.pitch += @s omegaflowey.math.2
