attribute @s minecraft:waypoint_transmit_range base set 60000000
waypoint modify @s style set summit_technical:node
execute at @s if data entity @n[type=interaction, tag=summit.node, distance=..0.1] {data: {color: 1}} run waypoint modify @s color hex ff4a64
execute at @s if data entity @n[type=interaction, tag=summit.node, distance=..0.1] {data: {color: 2}} run waypoint modify @s color hex faf36a
execute at @s if data entity @n[type=interaction, tag=summit.node, distance=..0.1] {data: {color: 3}} run waypoint modify @s color hex 4cf56d
execute at @s if data entity @n[type=interaction, tag=summit.node, distance=..0.1] {data: {color: 4}} run waypoint modify @s color hex 2f8efe
execute at @s if data entity @n[type=interaction, tag=summit.node, distance=..0.1] {data: {color: 5}} run waypoint modify @s color hex a46fff
