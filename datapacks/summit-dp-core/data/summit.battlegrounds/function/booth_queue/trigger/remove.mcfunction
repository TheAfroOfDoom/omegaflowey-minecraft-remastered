title @s actionbar ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {text: "Your queue vote has been removed!", color: "red"}]
scoreboard players reset @s summit.battlegrounds.queued_booth
function summit.battlegrounds:booth_queue/santize_queue
