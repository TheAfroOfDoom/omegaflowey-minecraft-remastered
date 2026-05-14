data merge entity @s {item: {id: "minecraft:diamond", count: 1, components: {"minecraft:item_model": "summit_transport:elevator/4_closed"}}}
tag @s add summit.elevator.moving
schedule function summit.elevator:move/run 1
