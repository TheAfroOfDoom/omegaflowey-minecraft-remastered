schedule function summit.elevator:1s_clock 1s
scoreboard players add @e[type=item_display, tag=summit.elevator.mover] summit.elevator.timer 1
tp @e[type=item_display, tag=summit.elevator.mover, scores={summit.elevator.timer=5..}] ~ ~-10000 ~
