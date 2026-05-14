data merge entity @s {item: {id: "minecraft:diamond", components: {"minecraft:item_model": "summit_transport:gondola_concept_closed"}}, Tags: ["summit.gondola"], teleport_duration: 4, start_interpolation: -1, transformation: {left_rotation: [0.0f, 0.707106f, 0.0f, -0.707106f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [4.0f, 4.0f, 4.0f], translation: [0.0f, -4.0f, 0.0f]}}
execute store result score @s summit.id run scoreboard players add #gondola_id summit.id 1
execute summon item_display run function summit.dev:zz/gondola/spawn_gondola/display/seat {kind: "left.back"}
execute summon item_display run function summit.dev:zz/gondola/spawn_gondola/display/seat {kind: "left.front"}
execute summon item_display run function summit.dev:zz/gondola/spawn_gondola/display/seat {kind: "right.back"}
execute summon item_display run function summit.dev:zz/gondola/spawn_gondola/display/seat {kind: "right.front"}
