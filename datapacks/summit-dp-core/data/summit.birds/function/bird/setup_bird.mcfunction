$data merge entity @s {Tags:["summit.bird","summit.new_bird","summit.coming_bird"],item:{id:"minecraft:diamond",components:{"minecraft:item_model":"$(model)","minecraft:custom_model_data":{flags:[true],floats:[$(variant)]}}},transformation:{left_rotation:$(rotation),translation:[0.0f, 0.0f, 0.0f],right_rotation:[0.0f, 0.0f, 0.0f, 1.0f],scale:[0.0f, 0.0f, 0.0f]},billboard:"vertical",shadow_strength:1.0f,interpolation_duration:30,teleport_duration:59,start_interpolation:3,data:{home_pos:$(home_pos)}}
scoreboard players operation @s summit.bird_id = $bird_id summit.temp
schedule function summit.birds:bird/move/main 1 replace
execute store result score @s summit.bird_timer run schedule function summit.birds:bird/land/main 59 append
