function summit.battlegrounds:battleground/reset_timers
function summit.battlegrounds:battleground/loop
function summit.battlegrounds:battleground/session/start with storage summit.battlegrounds:database session
tellraw @a ["", {text: "[Baobab Battlegrounds] ", color: "gold"}, {nbt: "session.booth_name", storage: "summit.battlegrounds:database", color: "dark_green", interpret: true}, {text: " is now active.", color: "green"}]
