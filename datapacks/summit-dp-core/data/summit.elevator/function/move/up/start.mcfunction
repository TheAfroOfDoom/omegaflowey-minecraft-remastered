data merge entity @s {item: {id: "minecraft:diamond", count: 1, components: {"minecraft:item_model": "summit_transport:elevator/4_closed"}}}
tag @s add summit.elevator.moving_up
data modify entity @s teleport_duration set value 1
scoreboard players set @s summit.elevator.cooldown -1
schedule function summit.elevator:move/up/run 1
