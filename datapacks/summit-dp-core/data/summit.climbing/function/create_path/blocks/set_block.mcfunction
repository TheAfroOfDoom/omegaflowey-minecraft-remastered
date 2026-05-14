$fill ~ ~ ~ ~ ~ ~ $(north) replace minecraft:chest{Items:[{count:1,Slot:0b,id:"minecraft:structure_void"}]}
$fill ~ ~ ~ ~ ~ ~ $(north_east) replace minecraft:chest{Items:[{count:3,Slot:0b,id:"minecraft:structure_void"}]}
$fill ~ ~ ~ ~ ~ ~ $(east) replace minecraft:chest{Items:[{count:2,Slot:0b,id:"minecraft:structure_void"}]}
$fill ~ ~ ~ ~ ~ ~ $(south_east) replace minecraft:chest{Items:[{count:6,Slot:0b,id:"minecraft:structure_void"}]}
$fill ~ ~ ~ ~ ~ ~ $(south) replace minecraft:chest{Items:[{count:4,Slot:0b,id:"minecraft:structure_void"}]}
$fill ~ ~ ~ ~ ~ ~ $(south_west) replace minecraft:chest{Items:[{count:12,Slot:0b,id:"minecraft:structure_void"}]}
$fill ~ ~ ~ ~ ~ ~ $(west) replace minecraft:chest{Items:[{count:8,Slot:0b,id:"minecraft:structure_void"}]}
$fill ~ ~ ~ ~ ~ ~ $(north_west) replace minecraft:chest{Items:[{count:9,Slot:0b,id:"minecraft:structure_void"}]}
$execute if data storage summit.climbing:master {blocks:{block_states:{use_down_state:true}}} run fill ~ ~ ~ ~ ~ ~ $(down) replace minecraft:chest{Items:[]}
execute if data storage summit.climbing:master {blocks: {block_states: {use_down_state: false}}} run fill ~ ~ ~ ~ ~ ~ minecraft:air replace minecraft:chest{Items: []}
kill @s
