execute if entity @e[type=item_display, tag=summit.elevator.moving_down, limit=1] run schedule function summit.elevator:move/down/run 1
execute as @e[type=item_display, tag=summit.elevator.moving_down] at @s run function summit.elevator:move/down/next_push
