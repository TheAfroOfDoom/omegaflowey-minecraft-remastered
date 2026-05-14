execute store result score #booth_index summit.battlegrounds run function summit.battlegrounds:utility/get_booth_index with storage summit.battlegrounds:temp queued_booths[0]
scoreboard players set #player_is_queued summit.battlegrounds 0
execute as @a if score @s summit.battlegrounds.queued_booth = #booth_index summit.battlegrounds run tag @s add summit_battlegrounds.has_valid_queue
execute as @a if score @s summit.battlegrounds.queued_booth = #booth_index summit.battlegrounds run scoreboard players set #player_is_queued summit.battlegrounds 1
execute if score #player_is_queued summit.battlegrounds matches 1 run data modify storage summit.battlegrounds:temp new_queue append from storage summit.battlegrounds:temp queued_booths[0]
data remove storage summit.battlegrounds:temp queued_booths[0]
execute if data storage summit.battlegrounds:temp queued_booths[0] run function summit.battlegrounds:booth_queue/santize_queue_loop
