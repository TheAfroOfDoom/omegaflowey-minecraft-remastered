execute at @e[type=item_display, tag=summit.elevator] run fill ~-2 ~-1 ~-2 ~2 ~3 ~2 air replace #summit.elevator:elevator_block strict
kill @e[type=item_display, tag=summit.elevator]
kill @e[tag=summit.elevator.mover]
scoreboard players reset * summit.elevator.id
scoreboard players set #max summit.elevator.id 0
execute positioned 84.5 69.0 155.5 summon item_display run function summit.elevator:setup/set_data {height: 20, x1: 82, y1: 98, z1: 154, x2: 70, y2: 96, z2: 156, raise: "west", lower: "east"}
execute positioned 157.5 68.0 121.5 summon item_display run function summit.elevator:setup/set_data {height: 26, x1: 156, y1: 103, z1: 120, x2: 136, y2: 101, z2: 122, raise: "west", lower: "east"}
execute positioned 148.5 73.0 225.5 summon item_display run function summit.elevator:setup/set_data {height: 21, x1: 149, y1: 103, z1: 224, x2: 147, y2: 101, z2: 190, raise: "north", lower: "south"}
execute positioned 165.5 77.0 8.5 summon item_display run function summit.elevator:setup/set_data {height: 20, x1: 166, y1: 106, z1: 9, x2: 164, y2: 104, z2: 25, raise: "south", lower: "north"}
execute positioned 194.5 72.0 -52.5 summon item_display run function summit.elevator:setup/set_data {height: 21, x1: 193, y1: 102, z1: -52, x2: 177, y2: 100, z2: -54, raise: "west", lower: "east"}
execute positioned 121.5 71.0 89.5 summon item_display run function summit.elevator:setup/set_data {height: 38, x1: 120, y1: 118, z1: 133, x2: 122, y2: 116, z2: 91, raise: "south", lower: "north"}
execute positioned 96.5 74.0 81.5 summon item_display run function summit.elevator:setup/set_data {height: 23, x1: 95, y1: 106, z1: 82, x2: 79, y2: 104, z2: 80, raise: "west", lower: "east"}
