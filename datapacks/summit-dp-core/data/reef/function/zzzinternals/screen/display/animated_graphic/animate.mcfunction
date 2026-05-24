scoreboard players add @s reef.zzzinternals.element.animated_graphic.current_frame 1
execute store result entity @s item.components."minecraft:custom_model_data".floats[0] int 1 run scoreboard players get @s reef.zzzinternals.element.animated_graphic.current_frame
execute if score @s reef.zzzinternals.element.animated_graphic.current_frame >= @s reef.zzzinternals.element.animated_graphic.frames run return run tag @s add reef.element.animated_graphic.finished
