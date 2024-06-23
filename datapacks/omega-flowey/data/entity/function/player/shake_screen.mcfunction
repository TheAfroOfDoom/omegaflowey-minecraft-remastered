scoreboard players operation @s math.0 = @s player.shake.yaw
scoreboard players operation @s math.0 *= #-1 mathf.const
execute store result storage utils:shake_screen yaw float 0.1 run scoreboard players get @s math.0

scoreboard players operation @s math.0 = @s player.shake.pitch
scoreboard players operation @s math.0 *= #-1 mathf.const
execute store result storage utils:shake_screen pitch float 0.1 run scoreboard players get @s math.0

function entity:utils/shake_screen_macro with storage utils:shake_screen

scoreboard players set @s player.shake.yaw 0
scoreboard players set @s player.shake.pitch 0
