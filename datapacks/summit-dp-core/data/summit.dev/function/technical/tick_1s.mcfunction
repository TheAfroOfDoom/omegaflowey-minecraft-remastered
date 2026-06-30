execute as @e[type=interaction, tag=summit.node] run function summit.dev:entity/node/update_pos with entity @s data
schedule function summit.dev:technical/tick_1s 1s
execute as @e[type=item_display, tag=summit.vehicle.with_seats] run function summit.dev:technical/tick_1s/nested_execute_0
