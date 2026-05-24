execute if score $cooldown_minutes summit.temp matches 1 run return run title @s actionbar {translate: "gui.actionbar.balloon_cooldown", with: ["1 minute"], color: "red"}
$title @s actionbar {"translate":"gui.actionbar.balloon_cooldown",with:["$(cooldown_minutes) minutes"],color:"red"}
