tag @s remove summit.activity.in_queue
tag @s remove summit.activity.active
$tag @s remove summit.activity.active.$(id)
scoreboard players enable @s summit.activity.re_queue
$tellraw @s ["[", {text: "Summit Activities", color: "blue"}, "] ", "You were previously $(type) for ", {storage: "summit.activity:names", nbt: "'$(id)'.activity", interpret: true}, " from ", {storage: "summit.activity:names", nbt: "'$(id)'.booth", interpret: true}, ". ", {color: "green", text: "Click Here", click_event: {action: "run_command", command: "trigger summit.activity.re_queue set 1"}}, " to re-queue for that activity."]
