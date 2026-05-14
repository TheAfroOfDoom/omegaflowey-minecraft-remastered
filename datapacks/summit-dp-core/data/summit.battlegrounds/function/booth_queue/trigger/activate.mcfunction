scoreboard players remove @s summit.battlegrounds.trigger 83550300
scoreboard players operation @s summit.battlegrounds.queued_booth = @s summit.battlegrounds.trigger
data modify storage summit.battlegrounds:macro kit_queue_booth set value {}
execute store result storage summit.battlegrounds:macro kit_queue_booth.index int 1 run scoreboard players get @s summit.battlegrounds.trigger
function summit.battlegrounds:booth_queue/trigger/queue with storage summit.battlegrounds:macro kit_queue_booth
scoreboard players reset @s summit.battlegrounds.trigger
