schedule function summit.elevator:1s_clock 1s
scoreboard players remove @e[type=item_display, tag=summit.elevator, tag=!summit.elevator.moving_down, tag=!summit.elevator.moving_up, scores={summit.elevator.cooldown=0..}] summit.elevator.cooldown 1
execute as @e[type=item_display, tag=summit.elevator, tag=!summit.elevator.moving_down, tag=!summit.elevator.moving_up, tag=summit.elevator.raised, scores={summit.elevator.cooldown=0}] run function summit.elevator:move/down/start
execute as @e[type=item_display, tag=summit.elevator, tag=!summit.elevator.moving_down, tag=!summit.elevator.moving_up, tag=!summit.elevator.raised, scores={summit.elevator.cooldown=0}] run function summit.elevator:move/up/start
