$execute store success score #queue_exists summit.battlegrounds run data get storage summit.battlegrounds:database queue[{booth_id:$(booth_id)}]
execute unless score #queue_exists summit.battlegrounds matches 1 run data modify storage summit.battlegrounds:database queue append from storage summit.battlegrounds:temp to_queue_booth
function summit.battlegrounds:booth_queue/santize_queue
