execute store result score #wind_direction.offset summit.flag run data get entity @r Rotation[0]
scoreboard players operation #wind_direction.offset summit.flag %= #2 summit.flag
execute if score #wind_direction.offset summit.flag matches 0 run scoreboard players set #wind_direction.offset summit.flag -1
scoreboard players operation #wind_direction.offset summit.flag *= #wind_scale summit.flag
scoreboard players operation #wind_direction summit.flag += #wind_direction.offset summit.flag
execute if score #wind_direction summit.flag matches ..-1 run scoreboard players add #wind_direction summit.flag 360
execute if score #wind_direction summit.flag matches 360.. run scoreboard players remove #wind_direction summit.flag 360
execute as @e[type=item_display, tag=summit_flag, tag=summit_flag.wind_sync] run function summit:flag/wind_sync/update_this
