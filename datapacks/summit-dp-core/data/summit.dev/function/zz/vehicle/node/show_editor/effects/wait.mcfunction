data modify storage summit.vehicles:temp dialog.body.contents[-1] append value {text: "Wait for "}
$data modify storage summit.vehicles:temp dialog.body.contents[-1] append value {text: "$(duration)", color: "gold"}
data modify storage summit.vehicles:temp dialog.body.contents[-1] append value {text: " ticks"}
