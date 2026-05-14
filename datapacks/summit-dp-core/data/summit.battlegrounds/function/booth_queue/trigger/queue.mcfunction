$data modify storage summit.battlegrounds:temp booth_id_to_queue set from storage summit.battlegrounds:database booths[$(index)].booth_id
execute store result score #booth_different summit.battlegrounds run data modify storage summit.battlegrounds:temp booth_id_to_queue set from storage summit.battlegrounds:database session.booth_id
execute if score #booth_different summit.battlegrounds matches 0 run scoreboard players reset @s summit.battlegrounds.queued_booth
$execute if score #booth_different summit.battlegrounds matches 1 run tellraw @s ["",{text:"[Baobab Battlegrounds] ",color:"gold"},{text:"You have added ",color:"green"},{nbt:"booths[$(index)].booth_name",storage:"summit.battlegrounds:database",interpret:true,color:"dark_green"},{text:" to the queue.",color:"green"}]
$data modify storage summit.battlegrounds:temp to_queue_booth set from storage summit.battlegrounds:database booths[$(index)]
$data modify storage summit.battlegrounds:macro kit_queue_booth.booth_id set from storage summit.battlegrounds:database booths[$(index)].booth_id
function summit.battlegrounds:booth_queue/queue_booth with storage summit.battlegrounds:macro kit_queue_booth
