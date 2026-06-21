$data merge entity @s {teleport_duration:2,interpolation_duration:2,Tags:["summit.swing","$(axis_tag)"],Rotation:[$(rotation),0],item:{id:"minecraft:diamond",components:{"minecraft:item_model":"summit_props:swing_5"}},transformation:{left_rotation:[0.0f,0.0,0.0f,1.0f],translation:[0.0f,0.0f,0.0f],right_rotation:[0.0f,0.0f,0.0f,1.0f],scale:[3.9999967f,3.9999998f,3.9999974f]}}
scoreboard players add $global summit.swing_id 1
scoreboard players operation @s summit.swing_id = $global summit.swing_id
execute at @s rotated as @s positioned ^ ^-5.5 ^ run function summit.swings:seat/create with storage summit:temp swings
scoreboard players set @s summit.angular_velocity 0
scoreboard players set @s summit.min_velocity -8000000
scoreboard players set @s summit.max_velocity 8000000
execute if data storage summit:temp swings{rotation: 90} run tag @s add summit.x_swing
execute if data storage summit:temp swings{rotation: 0} run tag @s add summit.z_swing
