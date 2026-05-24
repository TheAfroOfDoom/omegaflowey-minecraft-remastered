scoreboard players add @s summit.elevator.timer 1
scoreboard players operation $step summit.elevator.timer = @s summit.elevator.timer
scoreboard players operation $step summit.elevator.timer %= $down_phase summit.elevator.timer
execute if score $step summit.elevator.timer matches 1 if score @s summit.elevator.height matches 1.. run tp ~ ~-1 ~
execute if score $step summit.elevator.timer matches 1 positioned ~ ~-3 ~ run tp @n[type=item_display, tag=summit.elevator.mover, distance=..0.5] ~ ~-1 ~
execute if score $step summit.elevator.timer matches 1 run function summit.elevator:move/down/structure with entity @s data.summit.elevator.chains
execute if score $step summit.elevator.timer matches 1 if score @s summit.elevator.height matches ..0 run function summit.elevator:move/finish with entity @s data.summit.elevator.chains
execute if score $step summit.elevator.timer matches 1 if score @s summit.elevator.height matches 1.. run scoreboard players remove @s summit.elevator.height 1
