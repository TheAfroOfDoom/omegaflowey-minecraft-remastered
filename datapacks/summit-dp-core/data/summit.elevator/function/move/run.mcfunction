execute if entity @e[type=item_display, tag=summit.elevator.moving, limit=1] run schedule function summit.elevator:move/run 1
execute as @e[type=item_display, tag=summit.elevator.moving] at @s run function summit.elevator:move/next_push
