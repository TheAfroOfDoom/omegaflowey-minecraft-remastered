$execute store result score #trigger summit.battlegrounds run function summit.battlegrounds:utility/get_booth_index {booth_id:"$(booth_id)"}
scoreboard players add #trigger summit.battlegrounds 83550300
data modify storage summit.battlegrounds:macro prompt_for_queue set value {}
execute store result storage summit.battlegrounds:macro prompt_for_queue.trigger int 1 run scoreboard players get #trigger summit.battlegrounds
function summit.battlegrounds:booth_queue/trigger/prompt with storage summit.battlegrounds:macro prompt_for_queue
