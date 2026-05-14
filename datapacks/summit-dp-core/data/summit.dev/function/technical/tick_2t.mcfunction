execute as @e[type=interaction, tag=summit.node] run function summit.dev:entity/node/tick
schedule function summit.dev:technical/tick_2t 2
