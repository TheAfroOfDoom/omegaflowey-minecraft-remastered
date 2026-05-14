data modify storage summit.battlegrounds:temp queued_booths set from storage summit.battlegrounds:database queue
data modify storage summit.battlegrounds:temp new_queue set value []
function summit.battlegrounds:booth_queue/santize_queue_loop
data modify storage summit.battlegrounds:database queue set from storage summit.battlegrounds:temp new_queue
scoreboard players reset @a[scores={summit.battlegrounds.queued_booth=0..}, tag=!summit_battlegrounds.has_valid_queue] summit.battlegrounds.queued_booth
tag @a remove summit_battlegrounds.has_valid_queue
