execute if entity @e[type=item_display, tag=summit.elevator.moving_up, limit=1] run schedule function summit.elevator:move/up/run 1
execute as @e[type=item_display, tag=summit.elevator.moving_up] at @s run function summit.elevator:move/up/next_push
