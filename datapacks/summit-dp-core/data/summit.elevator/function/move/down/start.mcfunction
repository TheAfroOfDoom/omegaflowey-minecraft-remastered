data merge entity @s {item: {id: "minecraft:diamond", count: 1, components: {"minecraft:item_model": "summit_transport:elevator/4_closed"}}}
tag @s add summit.elevator.moving_down
execute store result score @s summit.elevator.height run data get entity @s data.summit.elevator.height
execute at @s run summon item_display ~ ~-3 ~ {teleport_duration: 10, Tags: ["summit.elevator.mover"], Passengers: [{id: "minecraft:shulker", Silent: 1b, Peek: 0b, DeathLootTable: "minecraft:empty", active_effects: [{id: "minecraft:invisibility", amplifier: 0, duration: -1, show_particles: 0b}, {id: "minecraft:resistance", amplifier: 10, duration: -1, show_particles: 0b}], NoAI: 1b, AttachFace: 0b, Tags: ["summit.elevator.mover"], attributes: [{id: "minecraft:scale", base: 3}]}]}
data modify entity @s teleport_duration set value 10
scoreboard players set @s summit.elevator.cooldown -1
schedule function summit.elevator:move/down/run 1
