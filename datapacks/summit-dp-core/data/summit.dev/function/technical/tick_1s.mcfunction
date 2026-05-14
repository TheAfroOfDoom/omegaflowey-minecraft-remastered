execute as @e[type=interaction, tag=summit.node] run function summit.dev:entity/node/update_pos with entity @s data
schedule function summit.dev:technical/tick_1s 1s
