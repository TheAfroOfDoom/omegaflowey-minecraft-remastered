execute if score $cooldown_seconds summit.temp matches 1 run return run title @s actionbar {translate: "gui.actionbar.balloon_cooldown", with: ["1 second"], color: "red"}
$title @s actionbar {"translate":"gui.actionbar.balloon_cooldown",with:["$(cooldown_seconds) seconds"],color:"red"}
