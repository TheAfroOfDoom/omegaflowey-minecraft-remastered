data modify storage summit.vehicles:temp dialog.body.contents[-1] append value {text: "Wait until "}
$data modify storage summit.vehicles:temp dialog.body.contents[-1] append value {text: "[condition]", color: "gold", hover_event: {action: "show_text", value: "$(condition)"}}
data modify storage summit.vehicles:temp dialog.body.contents[-1] append value {text: " is met"}
