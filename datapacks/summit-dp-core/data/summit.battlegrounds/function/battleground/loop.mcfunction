scoreboard players set $players summit.battlegrounds 0
execute as @a[tag=summit.battlegrounds.player] run scoreboard players add $players summit.battlegrounds 1
execute if score $players summit.battlegrounds matches 0 unless score $time_left summit.battlegrounds matches 0..30 run function summit.battlegrounds:battleground/process_empty
execute if score $players summit.battlegrounds matches 1 if score $vacant_timer summit.battlegrounds matches 1.. run scoreboard players set $vacant_timer summit.battlegrounds -1
execute if data storage summit.battlegrounds:database queue[0] run function summit.battlegrounds:battleground/process_queued
execute if score $time_left summit.battlegrounds matches 1.. unless data storage summit.battlegrounds:database queue[0] run scoreboard players set $time_left summit.battlegrounds -1
execute if data storage summit.battlegrounds:database session run schedule function summit.battlegrounds:battleground/loop 1s
