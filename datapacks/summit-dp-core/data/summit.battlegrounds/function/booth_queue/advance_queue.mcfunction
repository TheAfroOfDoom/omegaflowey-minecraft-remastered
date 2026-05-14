execute store result score #next_booth_index summit.battlegrounds run function summit.battlegrounds:utility/get_booth_index with storage summit.battlegrounds:database queue[0]
execute as @a if score @s summit.battlegrounds.queued_booth = #next_booth_index summit.battlegrounds at @s run playsound minecraft:block.note_block.bell block @s
execute as @a if score @s summit.battlegrounds.queued_booth = #next_booth_index summit.battlegrounds run title @s actionbar ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {text: "Your queued booth is now active! Make sure to reselect a kit!", color: "green"}]
function summit.battlegrounds:booth_queue/santize_queue
data remove storage summit.battlegrounds:database session
data modify storage summit.battlegrounds:database session set from storage summit.battlegrounds:database queue[0]
data remove storage summit.battlegrounds:database queue[0]
function summit.battlegrounds:booth_queue/santize_queue
function summit.battlegrounds:battleground/session/start with storage summit.battlegrounds:database session
execute if data storage summit.battlegrounds:database session run tellraw @a ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {nbt: "session.booth_name", storage: "summit.battlegrounds:database", color: "dark_green", interpret: true}, {text: " is now active.", color: "green"}]
execute unless data storage summit.battlegrounds:database session run tellraw @a ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {text: "The battlegrounds have become inactive.", color: "yellow"}]
