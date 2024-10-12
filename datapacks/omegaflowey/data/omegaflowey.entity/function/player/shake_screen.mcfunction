scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.player.shake.yaw
scoreboard players operation @s omegaflowey.math.0 *= #omegaflowey.const.-1 omegaflowey.math.const
execute store result storage omegaflowey:utils.shake_screen yaw float 0.1 run scoreboard players get @s omegaflowey.math.0

scoreboard players operation @s omegaflowey.math.0 = @s omegaflowey.player.shake.pitch
scoreboard players operation @s omegaflowey.math.0 *= #omegaflowey.const.-1 omegaflowey.math.const
execute store result storage omegaflowey:utils.shake_screen pitch float 0.1 run scoreboard players get @s omegaflowey.math.0

function omegaflowey.entity:utils/shake_screen_macro with storage omegaflowey:utils.shake_screen

scoreboard players set @s omegaflowey.player.shake.yaw 0
scoreboard players set @s omegaflowey.player.shake.pitch 0
